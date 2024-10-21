<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>registration page</title>
        <style>
            .finaldiv {
                padding-top: 20px;
                border: 5px solid black;
                width: 650px;
                margin: 160px 0px 0px 440px;
                height: 400px;
                border-radius: 10px;
            }

            h1 {
                text-align: center;
                font-family: "Ubuntu", sans-serif;
            }

            .finaldiv>div {
                padding-left: 15px;
                padding-bottom: 10px;
                font-size: 18px;
                font-weight: 400;
                word-spacing: 3px;
            }

            .lastname {
                float: right;
                margin-right: 30px;
            }

            .firstname {
                float: left;
            }

            .DOB {
                float: left;
            }

            .age {
                float: right;
                margin-right: 30px;
            }

            .gender {
                float: left;
            }

            .email {
                float: right;
                margin-right: 30px;
            }

            .name {
                margin-bottom: 25px;
            }

            .dobage {
                margin-bottom: 25px;
            }

            .genmail {
                margin-bottom: 25px;
            }

            .age>label {
                padding-right: 40px;
            }

            .email>label {
                padding-right: 27px;
            }

            .firstname>input {
                margin-left: 12px;
            }

            .name>div>input {
                border-radius: 5px;
            }

            .dobage>div>input {
                border-radius: 5px;
            }

            .email>input {
                border-radius: 5px;
            }

            button {
                width: 125px;
                border-radius: 10px;
                border: 1px solid rgb(0, 0, 0);
                padding: 5px;
            }

            button:hover {
                background-color: gray;
            }

            .Donation_date {
                float: left;
            }

            .BG {
                float: right;
                margin-right: 137px;
            }

            .no {
                display: inline;
            }

            .demo {
                padding-bottom: 35px;
            }

            .add {
                padding-top: 15px;
            }

            .add>input {
                margin-left: 11px;
            }

            .add>input,
            .no>input {
                border-radius: 5px;
            }

            .sub,
            .res {
                display: inline;
            }
        </style>
    </head>

    <body>
        <form action="regform" method="post">
            <div class="finaldiv">
                <h1>Registration form</h1>
                <div class="name">
                    <div class="firstname">
                        <label for="fname">first name :- </label>
                        <input type="text" name="userfname" id="fname" required>
                    </div>
                    <div class="lastname">
                        <label for="lname">last name :- </label>
                        <input type="text" name="userlname" id="lname" required>
                    </div>
                </div>
                <div class="dobage">
                    <div class="DOB">
                        <label for="dateofbirth">date of birth :- </label>
                        <input type="date" name="DOB" id="dateofbirth" required>
                    </div>
                    <div class="age">
                        <label for="Age">age :- </label>
                        <input type="number" name="age" id="Age" required>
                    </div>
                </div>
                <div class="genmail">
                    <div class="gender">
                        <label for="Gender">gender :- </label>
                        <select name="gender" id="Gender" required>
                            <option value="female">female</option>
                            <option value="male" selected>male</option>
                            <option value="others">others</option>
                        </select>
                    </div>
                    <div class="email">
                        <label for="mail">email :- </label>
                        <input type="email" name="Mail" id="mail" required>
                    </div>
                </div>
                <div class="demo" style="padding-bottom: 35px;">
                    <div class="Donation_date">
                        <label for="lastdate">last donation date :- </label>
                        <input type="date" name="ldate" id="lastdate" required>
                    </div>
                    <div class="BG">
                        <label for="bloodgroup">blood group :- </label>
                        <select name="bloodgroup" id="bg" required>
                            <option value="o+">o+</option>
                            <option value="o-">o-</option>
                            <option value="B+">B+</option>
                            <option value="B-">B-</option>
                            <option value="AB+">AB+</option>
                            <option value="AB-">AB-</option>
                            <option value="A+">A+</option>
                            <option value="A-">A-</option>
                        </select>
                    </div>
                </div>
                <div class="no">
                    <label for="pno">phone no :- </label>
                    <input type="number" name="no" id="pno" required>
                </div>
                <div class="add">
                    <label for="address">address :- </label>
                    <input type="text" name="add" id="address" required>
                </div>
                <div class="sub" style="padding-left:130px">
                    <button value="submit" type="submit" name="sub">
                        submit
                    </button>
                </div>
                <div class="res" style="padding-left:170px">
                    <button value="reset" type="reset">
                        reset
                    </button>
                </div>
            </div>
        </form>
    </body>

    </html>