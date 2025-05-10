CREATE DATABASE IF NOT EXISTS `nexorax`;
USE `nexorax`;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE quotes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    service VARCHAR(100) NOT NULL,
    message TEXT NOT NULL,
    submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS services (
    id INT AUTO_INCREMENT PRIMARY KEY,
    service_name VARCHAR(255) NOT NULL,
    service_description TEXT NOT NULL,
    service_price_range VARCHAR(255),
    service_category VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert some initial sample services
INSERT INTO services (service_name, service_description, service_price_range, service_category)
VALUES 
('Web Development', 'Custom-built, responsive, and high-performing websites tailored to your business needs. We ensure your website is optimized for any device and provides an excellent user experience.', '$500 - $3000', 'Web Development'),
('Web Handling', 'End-to-end support for maintaining your website’s health. We monitor, update, and fix issues to keep your website running smoothly and efficiently.', '$100 - $1000', 'Web Handling'),
('Web Creation', 'Modern websites built from scratch with the latest technologies. We create visually appealing and user-friendly websites designed to meet your specific business goals.', '$2000 - $5000', 'Web Creation'),
('Graphic Design', 'Logos, branding, and visuals that captivate your audience. Our design team will help create a visual identity that reflects your brand\'s essence and engages your customers.', '$300 - $2000', 'Graphic Design'),
('Application Development', 'Scalable apps for desktop, mobile, or enterprise systems. Whether it’s a mobile app or a desktop solution, we deliver powerful apps that drive business growth and improve efficiency.', '$1000 - $5000', 'Application Development'),
('App Handling', 'Continuous support and updates for your business apps. We provide ongoing app maintenance to ensure your apps are always up-to-date, secure, and efficient.', '$50 - $1500', 'App Handling');
