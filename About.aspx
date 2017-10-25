<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .nf-r2 {
          font-family: Roboto, serif;
          font-size: 20px;
          line-height: 38px;
          font-weight:  normal;
          font-style: italic;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid" style="margin-top:50px">
        <div class="row text-center">
            <div class="col-lg-offset-3 col-lg-6">
                <p class="nf-r2">
            Department offices in different universities do a lot of book-keeping activities and it is
            necessary to develop a software to automate these activities. Various details regarding each
            student such as his name, address, course registered, etc. are entered at the time he/she takes
            admission. At the beginning of every semester, students register for courses. The information
            system should allow the department secretary to enter data regarding student registrations.
            When the secretary enters the roll number of each student, the computer system should bring
            up a form for the corresponding student and should keep track of courses he has already
            completed and the courses he has back-log, etc. At the end of the semester, the instructors
            leave their grading information at the office which the secretary enters into the computer. The
            information system should be able to compute the grade point average for each student for
            the semester and his cumulative grade point average (CGPA) and print the grade sheet for
            each student. The information system should also keep track of inventories of the
            Department, such as equipment, their location, furniture, etc. The Department gets a yearly
            grant from the University and the Department spends it in buying equipment, books,
            stationery items, etc. Also, in addition to the annual grant that the Department gets from the
            University, it gets funds from different consultancy service it provides to different
            organizations. It is necessary that the Department information system keeps track of the
            Department accounts. The information system should also keep track of information such as
            the research projects running in the Department, publications by the faculties etc. this
            information are keyed in by the secretary of the Department. The information system should
            support querying the up-to- date details about every student by inputting his roll number. It
            should also support querying the details of the cash book account.
                </p>
            </div>
        </div>
    </div>
    
</asp:Content>

