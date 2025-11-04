import React, { useEffect, useState } from "react";
import { useFormik } from "formik";
import * as yup from "yup";
import Navbar from "./Navbar";
import { useNavigate } from "react-router-dom";

function PatientSignup() {
  const navigate = useNavigate();
  const [loading, setLoading] = useState(false);
  const [message, setMessage] = useState("");
  const [messageType, setMessageType] = useState(""); // "success" or "error"
  const API_URL = process.env.REACT_APP_API_URL;

  const passRules = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}$/;

  const validationSchema = yup.object().shape({
    first_name: yup.string().required("First name is required"),
    last_name: yup.string().required("Last name is required"),
    email: yup
      .string()
      .email("Invalid email")
      .required("Email is required"),
    age: yup.number().integer().required("Age is required"),
    gender: yup.string().required("Gender is required"),
    phone_number: yup
      .string()
      .matches(/^\d{10,13}$/, "Phone number must be between 10 and 13 digits")
      .required("Phone number is required"),
    password: yup
      .string()
      .min(6, "Password must be at least 6 characters")
      .matches(passRules, "Must include 1 uppercase, 1 lowercase, and 1 number")
      .required("Password is required"),
    confirmPassword: yup
      .string()
      .oneOf([yup.ref("password")], "Passwords must match")
      .required("Confirm password is required"),
  });

  const formik = useFormik({
    initialValues: {
      first_name: "",
      last_name: "",
      email: "",
      age: "",
      gender: "",
      phone_number: "",
      password: "",
      confirmPassword: "",
    },
    validationSchema,
    onSubmit: async (values, actions) => {
      setLoading(true);
      setMessage("");
      try {
        const response = await fetch(`${API_URL}/api/patientsignup`, {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify({
            first_name: values.first_name,
            last_name: values.last_name,
            email: values.email,
            age: values.age,
            gender: values.gender,
            phone_number: values.phone_number,
            password: values.password,
          }),
        });

        const data = await response.json();

        if (!response.ok) {
          throw new Error(data.error || "Signup failed");
        }

        setMessage(data.message || "Signup successful!");
        setMessageType("success");
        actions.resetForm();
        navigate("/login");
      } catch (error) {
        setMessage(
          error.message.includes("already exists")
            ? "Email already exists. Try logging in instead."
            : error.message
        );
        setMessageType("error");
      } finally {
        setLoading(false);
      }
    },
  });

  const { values, errors, touched, handleBlur, handleChange, handleSubmit } =
    formik;

  useEffect(() => {
    if (message) {
      const timer = setTimeout(() => setMessage(""), 5000);
      return () => clearTimeout(timer);
    }
  }, [message]);

  return (
    <>
      <Navbar />
      <div className="flex flex-col items-center justify-center min-h-screen bg-gray-50 px-4">
        <div className="w-full max-w-md bg-white shadow-lg rounded-xl p-6">
          <h1 className="text-2xl font-semibold text-center mb-6 text-blue-600">
            Patient Signup
          </h1>

          <form onSubmit={handleSubmit} className="space-y-4">
            {[
              { name: "first_name", placeholder: "First Name", type: "text" },
              { name: "last_name", placeholder: "Last Name", type: "text" },
              { name: "email", placeholder: "Email", type: "email" },
              { name: "age", placeholder: "Age", type: "number" },
              {
                name: "phone_number",
                placeholder: "Phone Number",
                type: "text",
              },
              { name: "password", placeholder: "Password", type: "password" },
              {
                name: "confirmPassword",
                placeholder: "Confirm Password",
                type: "password",
              },
            ].map((field) => (
              <div key={field.name}>
                <input
                  {...field}
                  value={values[field.name]}
                  onChange={handleChange}
                  onBlur={handleBlur}
                  className={`w-full p-3 border rounded-lg focus:outline-none ${
                    errors[field.name] && touched[field.name]
                      ? "border-red-500"
                      : "border-gray-300 focus:ring-2 focus:ring-blue-400"
                  }`}
                />
                {errors[field.name] && touched[field.name] && (
                  <p className="text-red-500 text-sm mt-1">
                    {errors[field.name]}
                  </p>
                )}
              </div>
            ))}

            <select
              name="gender"
              value={values.gender}
              onChange={handleChange}
              onBlur={handleBlur}
              className={`w-full p-3 border rounded-lg ${
                errors.gender && touched.gender
                  ? "border-red-500"
                  : "border-gray-300 focus:ring-2 focus:ring-blue-400"
              }`}
            >
              <option value="">Select Gender</option>
              <option value="Male">Male</option>
              <option value="Female">Female</option>
              <option value="Other">Other</option>
            </select>
            {errors.gender && touched.gender && (
              <p className="text-red-500 text-sm mt-1">{errors.gender}</p>
            )}

            <button
              type="submit"
              disabled={loading}
              className="w-full bg-blue-600 text-white py-2 rounded-lg hover:bg-blue-700 transition disabled:opacity-60"
            >
              {loading ? "Submitting..." : "Sign Up"}
            </button>
          </form>

          {message && (
            <div
              className={`mt-4 text-center p-3 rounded-lg font-medium ${
                messageType === "error"
                  ? "bg-red-100 text-red-700 border border-red-400"
                  : "bg-green-100 text-green-700 border border-green-400"
              }`}
            >
              {message}
            </div>
          )}
        </div>
      </div>
    </>
  );
}

export default PatientSignup;
