<h1>Lead2Sale</h2>
<p>Lead2Sale is a Lead Management System which helps automate customer acquisition process. Customer Acquisition follows a sales pipeline which defines a typical step by step process that sales reps go through to convert a prospect into a paying customer. A sales stage is created for each step in the sales process. The sales rep is responsible for moving the stages as the prospect's interest level changes. </p>
<p>You as a developer need to build this entire software based upon the requirements mentioned below. All Data Models and Used Cases are described as below.<p>

<h4>Users & Roles</h4>
<p>Users should be able to operate this system only via a email/password authentication system. Users can only be invited into the application. Registrations should not be allowed.</p>
<p>A User has a Full Name, Email, Password, Phone(10 digit) and role_id.</p>
<p>User belongs_to Roles. Role has_many Users</p>
<p>Users can have one of 2 roles. 1. Sales Manager 2. Sales Associate</p>
<p>Sales Manager has full authority over the software usage while Sales Associate has limited authority over software usage.</p>

<h4>Prospects & Customers</h4>
<p>Prospects enter the sales pipeline when a prospect record is created in Lead2Sale. From that point on, the sales rep guides the prospect through the sales stages. This is not necessarily a linear process where every prospect goes through every stage. Instead, it is a framework for making the sales process more systematic and standardized.</p>
<p>The only way a Customer can be created is by automation i.e. when a Prospect purchases something, then and only then the Prospect qualifies to become a Customer.</p>
<p>A Prospect has a Full Name, Email, Phone(10 digit), Location, stage_id & managed_by.</p>
<p>Prospect belongs_to Stage. Stages has_many Prospects. Prospect also belongs to User with foreign key of managed_by.</p>
<p>Customer has all attributes of a Prospect except stage_id.</p>

<h4>Stages</h4>
<p>There are 4 stages. New Opportunity, Negotiating and won or lost</p>
<ol>
<li><strong>New Opportunity</strong> - This stage is assigned as default when a prospect is created.</li>
<li><strong>Negotiating </strong> - This stage is assigned after the prospect responds to a proposal, but requests some changes before committing to a purchase.</li>
<li><strong>Won</strong> - This stage is assigned after the prospect makes a purchase. This is when a customer record is created and a prospect record is archived.</li>
<li><strong>Lost </strong> - This stage is assigned if a Prospect purchases from a competitor or decides they are no longer interested in your product.</li>
</ol>

<p>A Stage has a name, description and interest_level.</p>

<h3>Business Logic</h3>
<h4>Users & Roles</h4>
<p>User should be created with valid email, phone and all fields must be mandatory. Validations should be present on both server-side as well as client-side.</p>
<p>Sales Manager can manage i.e. CRUD, Prospects, Customers, Users, Stages & Email Templates. Exception being the create of customer as that is an automated process.</p>
<p>Sales Associate can CRU Prospects. Each Sales Associate can only manage their own Prospects.</p>
<p>User should be created and listed on the user index page itself.</p>
<p>All Users should be listed in a table ordered by updated at. User data should be editable asynchronously. Checkout <a href="https://vitalets.github.io/x-editable/">JQuery X-editable</a></p>
<p>User roles should be toggled asynchronously.</p>

<h4>Prospects & Customers</h4>
<p>Only when a Prospect has attained the stage of ‘Won’, can it be moved as a Customer. All Prospects initialize with the ‘New Opportunity’ Stage and is guided down the sales process by the sales rep.</p>
<p>Prospect should be created and listed on the prospect index page. Make sure that any edit should be x-editable within the table same as users.</p>
<p>All async edits should have success and errors messages displayed.</p>

<table>
  <tr>
    <th><strong>STAGES</strong></th>
  </tr>
  <tr>
    <td>NEW OPPORTUNITY</td>
  </tr>
  <tr>
    <td>NEGOTIATING</td>
  </tr>
  <tr>
    <td>WON</td>
  </tr>
    <tr>
    <td>LOST</td>
  </tr>
</table>

<h4>User Interfaces</h4>
<p>The app should have all user interfaces designed in <a href="http://bulma.io/">Bulma</a></p>
<p>UI should be clean, neat and fully functional.</p>

<h4>Code Quality</h4>
<p>Quality of code is of very high importance. Make sure code is well indented and optimised.</p>
<p>Push the code onto your github profile and share the link. Code should be pushed right from very beginning. Commit frequently.</p>
<p>Test all use cases and make sure the software you ship is fully functional.</p>
<p>Feel free to discuss before proceeding if you have any questions.</p>
<p>Good Luck!</p>
