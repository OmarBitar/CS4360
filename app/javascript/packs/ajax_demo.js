//// to run this code please do the following: -
//// 1. bundle install (we use new gems for this functionality to work)
//// 2. rails assets:precompile (only do this if you wish to test the functions in this file)
//// 3. yarn install --check-files (only if prompted)

//// make sure to import the functions from the correct path
//import { get,push } from '../api_ajax';

//// when u fetch anything, make sure to store it into a variable
//// param: name of path u r fetching from
//var fetched_roles = get('roles');
////hit Ctr+Shift+i to load up the console on the browser
//console.log(fetched_roles);

//// param1: name of path u r fetching from
//// param2: the fields that u r pushing
//// check the schema to see how to format what u need to pass for the second param,
//// do NOT include user_id, created_at, and updated_at
//push('roles',{ name: "manager", priority: 1 });
//// make sure to refresh page when u push something since rails isn't a realtime framework

//// note all validation written in the models wil persist here, and an alert will
//// display an errors