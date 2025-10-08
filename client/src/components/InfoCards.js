// InfoCards.js
import React from "react";

function InfoCards() {
  const info = [
    { img: "/images/img1.png", title: "Book an Appointment", text: "Easily schedule appointments with doctors across different departments and specialties" },
    { img: "/images/img2.png", title: "Access Medical Records", text: "View and manage your health history, prescriptions, and test results in one place" },
    { img: "/images/img3.png", title: "Consult with Specialists", text: "Connect with specialists online or in person for focused medical advice." },
    { img: "/images/img4.png", title: "Pay Your Bills Online", text: "Manage and settle your hospital bills securely with integrated payment options." },
    { img: "/images/img5.png", title: "Explore Our Services", text: "From outpatient care to specialized treatments, discover all our services." },
    { img: "/images/img6.png", title: "Emergency Assistance", text: "Get immediate help in emergencies with 24/7 support." },
  ];

  return (
    <div className="px-4 py-10 bg-gray-50">
      <h1 className="text-2xl md:text-3xl font-bold text-center text-blue-900 mb-8">
        What can you do with TibaCare?
      </h1>

      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
        {info.map((item, idx) => (
          <div key={idx} className="bg-white shadow-md rounded-xl p-6 hover:scale-105 transition-transform duration-300 text-center">
            <img src={item.img} alt={item.title} loading="lazy" className="w-24 h-24 mx-auto mb-4" />
            <h3 className="text-blue-800 font-semibold mb-2">{item.title}</h3>
            <p className="text-gray-700 text-sm">{item.text}</p>
          </div>
        ))}
      </div>
    </div>
  );
}

export default InfoCards;
