import json
from collections import namedtuple
from json import JSONEncoder
from string import Template
from flask import Blueprint, render_template

camera_bp = Blueprint('camera_bp', __name__,
    template_folder='templates',
    static_folder='static',
    static_url_path='assets')

class Camera:
    def __init__(self, **kwargs):
        self.__dict__.update(kwargs)

cameras = []

def init():
    with open("config/cameras.json", "r") as read_file:
        print("convert json to dictionary")
        cameras_objs = json.load(read_file)
        print("json conversion done")

        global cameras
        cameras = [Camera(**camera_dict) for camera_dict in cameras_objs["cameras"]]
        for camera in cameras:
            with open("config/wep_ini_template.txt", "r") as init_template_file:
                print(f"creating wep ini file for camera {camera.name}")
                t = Template(init_template_file.read())
                x = t.substitute(name=camera.name, location=camera.location, type=camera.link_type, link=camera.link, frame_size=camera.frame_skip_size)
                init_file = open(f"config/wep_{camera.name}.ini", "w")
                init_file.write(x)
                init_file.close()
            with open("config/weplog_template.txt", "r") as weplog_template_file:
                print(f"creating wep log config file for camera {camera.name}")
                t = Template(weplog_template_file.read())
                x = t.substitute(camera=camera.name)
                log_file = open(f"config/weplog_{camera.name}.conf", "w")
                log_file.write(x)
                log_file.close()

def get_cameras():
    return cameras

def to_camera_ini_name(camera):
    return f"config/wep_{camera.name}.ini"

def cameras_to_json():
    #for camera in cameras:
    #    print(json.dumps(camera.__dict__))
    return json.loads(json.dumps(cameras, default = lambda x: x.__dict__))

@camera_bp.route('/')
def home():
    return render_template("camera/camera.html", cameras=cameras)

@camera_bp.route('/cameras')
def get_cameras_as_json():
    return cameras_to_json()