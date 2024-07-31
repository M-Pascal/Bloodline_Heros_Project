# Bloodline Heroes Project.

## Functionality according to the three main Actors
### 1. Admin
- Admin doesn't have to register on this platform for security reasons; only login with the credential created using the following command:
```
py manage.py createsuperuser
```
After logging in, the admin can view the units of blood available for each blood group, the number of people who have already donated, the number of blood requests, the number of approved requests, and the total units of blood on the dashboard. They can also view, update, and delete donor and patient information by performing CRUD. Admin can review and approve/reject donor requests based on the donor's health issues; approved requests are added to the inventory dash to monitor smooth operation, while rejected ones are not. Additionally, the admin will have to handle blood requests made by donors/patients, with approved requests reducing blood donation, while rejected requests have no impact. The system also allows viewing the history of blood requests and updating the units of a particular blood group.


### 2. Donor
Donors can create an account by providing their basic details. After logging in, they can donate blood, but it will only be added to the management system after admin approval. Donors can view their donation history, along with the status of each donation (Pending, Approved, or Rejected). They also have the option to request blood from the blood management end and can see the history of their blood requests with the status of each. On their dashboard, donors can view the number of blood requests they have made and how many have been approved, are pending, or have been rejected by the admin. Donors can donate blood and request it in case of emergency.


### 3. Patient
Patients can create an account without admin approval and log in immediately after signing up. Once logged in, they can view the number of blood requests they have made and how many have been approved, pending, or rejected by the admin, all displayed on their dashboard. Patients can request specific blood groups and units from the blood management and track the status of these requests (Pending, Approved, or Rejected) in their blood request history.

---

## HOW TO RUN THIS PROJECT (For re-use)
- Install Python3 (Include Path while installing Python) by finding it online:
  ''' https://www.python.org/downloads/ '''
- Check your version of Python you have, using the following command:
   ''' python --version '''
- After, you will need to install the requirement the project by running this command:
```
Python -m pip install -r requirements. txt
```
- Migrating the necessary tables from the database after installing libraries. You will have to run the following command line:
```
py manage.py makemigrations
py manage.py migrate
py manage.py runserver
```
- By default will generate this type of URL link that works only on the local machine
```
http://127.0.0.1:8000/
```
## ---The end--- 
