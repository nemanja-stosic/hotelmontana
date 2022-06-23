# Hotel Montana (Hotel-Management-System)

Hotel Montana is a Java Spring Boot Web application that manages the hotel. With Hotel Montana you can book guests, contact the manager if necessary and manage the guest.
To manage the guest, you must first log in as an administrator, then you will be able to access the hotel guest list and there you can update guest information or charge them, you can also see the guest archive that keeps all previous guests who visited the Montana hotel.

Home Page Demo Preview (less than 1 min)

<img src="https://user-images.githubusercontent.com/48128569/174773353-cc146eef-0dfe-4f81-a522-838f06eb361b.gif" alt="alt text" width="854" height="480">

Copyright ©2022 All rights reserved | This template is made by [Colorlib](https://colorlib.com/).

# Features

<h3>Hotel Montana</h3>

We can book a guest at the hotel. We need to state his / her name, check-in and check-out dates, as well as how many adults will be staying in the hotel room and how many children, and finally we need to choose which room the guest will use.

![Screenshot (313)](https://user-images.githubusercontent.com/48128569/174988135-9290e70e-e45f-4a10-9fa8-f169be9a5b78.png)

If necessary, we can contact the manager by sending a message.

![Screenshot (314)](https://user-images.githubusercontent.com/48128569/174988746-961f8a82-9896-402e-9d8c-6ee7d747c2e4.png)

<h3>Administration</h3>

Clicking on the "Manage a Guest" button will display the login form and when you enter the correct username and password (username: admin, password: admin), a list of guests staying at the hotel will be displayed.Clicking on the "Manage a Guest" button will display the login form and when you enter the correct username and password (username: admin, password: admin), a list of guests staying at the hotel will be displayed.

![Screenshot (316)](https://user-images.githubusercontent.com/48128569/174990210-935fa728-edde-4970-b0b0-6501723207bb.png)

By clicking on update we can update the guest, for example, Nick. We will update the check-out date and the number of adults in Nick's room.

![Screenshot (317)](https://user-images.githubusercontent.com/48128569/174990910-c7704174-53a1-4de7-9f2f-7f8a80389bf9.png)

Here, we can see that the update was successful.

![Screenshot (318)](https://user-images.githubusercontent.com/48128569/174991121-cada9d5c-2ca1-4fb6-b367-6ead19a623ce.png)

By clicking on the bill, we can enter payment information for the guest when he wants to check out of the hotel. Let's enter that information for Nick.

![Screenshot (319)](https://user-images.githubusercontent.com/48128569/174991570-3e1c8357-9e90-4bad-9d52-1c52cd90d755.png)

Here we can see that the transaction was successful.

![Screenshot (320)](https://user-images.githubusercontent.com/48128569/174991842-92927622-16f3-4ab5-b716-1d1661bf54c0.png)

By clicking on the "guests archive" on the left we can see the list of all guests who have ever checked into the hotel. Nick is there because he is currently the only guest who checked out of the hotel.

![Screenshot (322)](https://user-images.githubusercontent.com/48128569/174992347-d0c30f92-1115-41f7-9f6f-c14aa1f7c015.png)

<h3>Validation</h3>

Validation for each form was processed. Login validation, empty fields:

![Screenshot (326)](https://user-images.githubusercontent.com/48128569/174993175-3b409e9c-5d51-4090-923b-17697424846f.png)

Incorrect login:

![Screenshot (327)](https://user-images.githubusercontent.com/48128569/174993200-f4ee0fc8-a597-49c4-b1be-d60e74e56194.png)

If not all data are entered when booking a guest:

![Screenshot (328)](https://user-images.githubusercontent.com/48128569/174993940-2784d32d-774d-4a63-8850-7f21498c84c6.png)

During the guest information update, if we do not enter any information, the update will be canceled: 

![Screenshot (323)](https://user-images.githubusercontent.com/48128569/174994331-741a7ef9-8f83-4f21-bc4c-2b55ed0b9e77.png)

If we try to bill some guests before the check-out date expires, we will receive a message that we need to update their check-out date first:

![Screenshot (324)](https://user-images.githubusercontent.com/48128569/174994791-624ca8be-285c-4f5b-ab20-a561ad6a39ec.png)

If we do not enter all the information when billing the guest, we will receive the appropriate message:

![Screenshot (325)](https://user-images.githubusercontent.com/48128569/174995296-82a388ed-b601-4903-91f5-9138e1d9adf8.png)

# Technologies 

<h3>Frontend</h3>

For the frontend I used an HTML template (copyright mentioned above) and the reason why I decided to use an HTML template is that I wanted to focus more on backend development (Java, Spring, MySQL), but I also wanted to have a nice view.
Also, this was an opportunity to see what a real life project looks like and how to effectively build a frontend, which was very helpful because I learned a lot of new things.
 
I changed HTML code into JSP syntax, significantly changed the original code, and wrote a little CSS and javascript as well. Also, I made use of spring JSP tag libraries and the expression language (EL).

<h3>Backend</h3>

For background development, I used Java, Spring Boot, and Hibernate. The design patterns used to develop this application are the Data Access Object (DAO) which provides an abstract interface for the MySQL database, the factory design pattern that forwards us objects of a given type, and the Spring MVC.

For project management I used Maven and for database I used MySQL.

# Conclusion

The main goal of this project was to improve and perfect my Spring Boot skills. I was given the opportunity to work with all kinds of situations involving HTTP methods such as POST + GET + Redirect to get the right result, GET + POST, etc. I also learned a good approach for organizing frontend code for JSP, CSS, and JavaScript.
