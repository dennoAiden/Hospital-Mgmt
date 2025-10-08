// About.js
import React from "react";
import Navbar from "./Navbar";
import Footer from "./Footer";

function About() {
  return (
    <div className="flex flex-col min-h-screen">
      <Navbar />
      <section className="flex-1 bg-gray-50 py-10 px-6 md:px-20">
        <div className="max-w-4xl mx-auto">
          <h1 className="text-3xl md:text-4xl font-bold text-blue-900 mb-6 text-center">About Us</h1>

          <div className="space-y-6">
            <div>
              <h2 className="text-xl font-semibold text-blue-800 mb-2">Our Mission</h2>
              <p className="text-gray-700">Providing compassionate care, groundbreaking treatments, and a healing touch — because your health is our mission.</p>
            </div>
            <div>
              <h2 className="text-xl font-semibold text-blue-800 mb-2">Team Mantra</h2>
              <p className="text-gray-700">Together, we’re the heartbeat of healthcare, every patient, every day.</p>
            </div>
            <div>
              <h2 className="text-xl font-semibold text-blue-800 mb-2">Our Vision</h2>
              <p className="text-gray-700">To lead the future of healthcare with innovation and patient-centered excellence.</p>
            </div>
          </div>
        </div>
      </section>
      <Footer />
    </div>
  );
}

export default About;
