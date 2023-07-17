#!/bin/bash

CLIENT_ID="iofmzyQz73woC7k3XIPopMHIqN8sRIZV"
CLIENT_SECRET="a7LubwnuCsAFWiVZVQ0te9RHwitE1TURzkJFXLb_se9cGRAgyjIojhLEqDzK0h-C"
#CLIENT_TOKEN="eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6Ik5UQkNNRVZFTjBVM1EwWTNOell6TmtaRlJrWTNOa0UzTmpNM01EZzFORVkwT1RkRFJqYzFNdyJ9.eyJodHRwczovL3JhcHRvcnRlY2guY29tL2NsaWVudFVJRCI6IjM5ZjI1OGY5LTI0OTEtNGY4NS05M2NjLWEyZjE5YjE4MzIyNyIsImh0dHBzOi8vcmFwdG9ydGVjaC5jb20vdWlkIjoiZmJkNjY4OTctMjdiMi00MjAwLTg2NDItNTdkNmM1NDliYzIxIiwiaHR0cHM6Ly9yYXB0b3J0ZWNoLmNvbS9pc0ludGVybmFsQ2xpZW50IjpmYWxzZSwiaXNzIjoiaHR0cHM6Ly9zdGFnaW5nbG9naW4ucmFwdG9ydGVjaC5jb20vIiwic3ViIjoiaW9mbXp5UXo3M3dvQzdrM1hJUG9wTUhJcU44c1JJWlZAY2xpZW50cyIsImF1ZCI6Imh0dHBzOi8vYXBpLXN0YWcucmFwdG9ydGVjaC5jb20iLCJpYXQiOjE2Nzc4MDY5MjksImV4cCI6MTY3Nzg5MzMyOSwiYXpwIjoiaW9mbXp5UXo3M3dvQzdrM1hJUG9wTUhJcU44c1JJWlYiLCJzY29wZSI6ImNhbm1hbmFnZWluY2lkZW50cyByZWFkOmJ1aWxkaW5ncyBjYW5wZXJmb3JtcmV1bmlmaWNhdGlvbnRhc2tzIGNhbm1hbmFnZWluY2lkZW50c3R1ZGVudHMgY2FuaW5pdGlhdGVpbmNpZGVudCIsImd0eSI6ImNsaWVudC1jcmVkZW50aWFscyIsInBlcm1pc3Npb25zIjpbImNhbm1hbmFnZWluY2lkZW50cyIsInJlYWQ6YnVpbGRpbmdzIiwiY2FucGVyZm9ybXJldW5pZmljYXRpb250YXNrcyIsImNhbm1hbmFnZWluY2lkZW50c3R1ZGVudHMiLCJjYW5pbml0aWF0ZWluY2lkZW50Il19.oeSaOVdC7tJ6fkaTnmv86U53SsFMbmNZ6Nqacs0SP6q5abuyVdTTgpsj8LAM6WrPNw75RoYFDlvzFcLeo5L2FuqqldbGd7WC9jAgvPuppAe5aQ2h9gLOfz0T0gRNp7pDfbYktvROPcrnjVUwZ_SW4DxDEUXD6_Mc6tRJrDhiAYi60js_8RTWOnPlsbuev2L_Sr-wqL8_bnBgo-ujElSogbieobxD5cefjgBugUUcn6HoeNvyInfQq5hmnK_jYF02FkKYiYTk1oshM29Z830L4CzrceTDQgTpkPwVFuKdwJVYI_x1wyhuY_KzDU58Eic3YLLzs9lg4zCezX9C-oP8ag"
CLIENT_TOKEN="eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6Ik5UQkNNRVZFTjBVM1EwWTNOell6TmtaRlJrWTNOa0UzTmpNM01EZzFORVkwT1RkRFJqYzFNdyJ9.eyJodHRwczovL3JhcHRvcnRlY2guY29tL2NsaWVudFVJRCI6IjM5ZjI1OGY5LTI0OTEtNGY4NS05M2NjLWEyZjE5YjE4MzIyNyIsImh0dHBzOi8vcmFwdG9ydGVjaC5jb20vdWlkIjoiZmJkNjY4OTctMjdiMi00MjAwLTg2NDItNTdkNmM1NDliYzIxIiwiaHR0cHM6Ly9yYXB0b3J0ZWNoLmNvbS9pc0ludGVybmFsQ2xpZW50IjpmYWxzZSwiaHR0cHM6Ly9yYXB0b3J0ZWNoLmNvbS9pc1N5c3RlbVVzZXIiOmZhbHNlLCJpc3MiOiJodHRwczovL3N0YWdpbmdsb2dpbi5yYXB0b3J0ZWNoLmNvbS8iLCJzdWIiOiJpb2ZtenlRejczd29DN2szWElQb3BNSElxTjhzUklaVkBjbGllbnRzIiwiYXVkIjoiaHR0cHM6Ly9hcGktc3RhZy5yYXB0b3J0ZWNoLmNvbSIsImlhdCI6MTY3Nzg4OTAwNiwiZXhwIjoxNjc3OTc1NDA2LCJhenAiOiJpb2ZtenlRejczd29DN2szWElQb3BNSElxTjhzUklaViIsInNjb3BlIjoiY2FubWFuYWdlaW5jaWRlbnRzIHJlYWQ6YnVpbGRpbmdzIGNhbnBlcmZvcm1yZXVuaWZpY2F0aW9udGFza3MgY2FubWFuYWdlaW5jaWRlbnRzdHVkZW50cyBjYW5pbml0aWF0ZWluY2lkZW50IiwiZ3R5IjoiY2xpZW50LWNyZWRlbnRpYWxzIiwicGVybWlzc2lvbnMiOlsiY2FubWFuYWdlaW5jaWRlbnRzIiwicmVhZDpidWlsZGluZ3MiLCJjYW5wZXJmb3JtcmV1bmlmaWNhdGlvbnRhc2tzIiwiY2FubWFuYWdlaW5jaWRlbnRzdHVkZW50cyIsImNhbmluaXRpYXRlaW5jaWRlbnQiXX0.riUy4TfuBOZWzviovPGVIN5-Dp4FCvPq7mFYYzTHCAEAhNkwRwc4rqvR7Y0HIzFarEZlYcb7bqqavv3i11xoeteLaJckvZ0-UL8lvW08zL1W69wc16SbqP_M0KJ7WDzEnutvv-kcvYdwLbRHnxiK3bkCev_QEoRD03SzPy3JwnYZ4hBdbyI-ksPN-lGzaTfihYFUdOdXEgZN5j0NUF8Fxy6-dQVEL4BgvILGRepAlkd4krHM4UIt6_R209-TwHUVwyVdl5WmCKMP1JqzVASFiXIFMU02VYQLSlNe-ZhTxvFPmnsEoG1_SD4fEiCs9c4r-f0iWurS7Y86NUG4cQKVWg"

echo $CLIENT_ID
echo $CLIENT_SECRET

#URL="https://api-stag.raptortech.com/clientbuilding/v1/Clients/39F258F9-2491-4F85-93CC-A2F19B183227/Buildings"
URL="https://api-stag.raptortech.com/clientbuilding/v1/Buildings"
curl --location --request GET \
     --url "${URL}" \
     --header "Authorization: Bearer ${CLIENT_TOKEN}"
