-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2020 at 07:13 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `libsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'Nandhini', '$2y$10$1VmOehdw8EfSiTn.wRR2EOmRviX23G6G/8KrbTRkAatc4dRTBLB2q', 'Nandhini', 'Anand', 'profile_youtube.jpg', '2024-06-20');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `author` varchar(150) NOT NULL,
  `publisher` varchar(150) NOT NULL,
  `publish_date` date NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `isbn`, `category_id`, `title`, `author`, `publisher`, `publish_date`, `status`) VALUES
(1, '9780743273565', 1, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Scribner', '1925-04-10', 0),
(2, '9780061120084', 1, 'To Kill a Mockingbird', 'Harper Lee', 'J.B. Lippincott & Co.', '1960-07-11', 0),
(3, '9780451524935', 1, '1984', 'George Orwell', 'Secker & Warburg', '1949-06-08', 0),
(4, '9780679783268', 2, 'Pride and Prejudice', 'Jane Austen', 'T. Egerton', '1813-01-28', 0),
(5, '9781503280786', 2, 'Moby-Dick', 'Herman Melville', 'Harper & Brothers', '1851-10-18', 0),
(6, '9781853260629', 3, 'War and Peace', 'Leo Tolstoy', 'The Russian Messenger', '1869-01-01', 0),
(7, '9780316769488', 1, 'The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', '1951-07-16', 0),
(8, '9780547928227', 2, 'The Hobbit', 'J.R.R. Tolkien', 'George Allen & Unwin', '1937-09-21', 0),
(9, '9781451673319', 3, 'Fahrenheit 451', 'Ray Bradbury', 'Ballantine Books', '1953-10-19', 0),
(10, '9780141441146', 2, 'Jane Eyre', 'Charlotte Brontë', 'Smith, Elder & Co.', '1847-10-16', 0),
(11, '9780618640157', 2, 'The Lord of the Rings', 'J.R.R. Tolkien', 'George Allen & Unwin', '1954-07-29', 0),
(12, '9780451526342', 1, 'Animal Farm', 'George Orwell', 'Secker & Warburg', '1945-08-17', 0),
(13, '9780060850524', 3, 'Brave New World', 'Aldous Huxley', 'Chatto & Windus', '1932-01-01', 0),
(14, '9780141439556', 2, 'Wuthering Heights', 'Emily Brontë', 'Thomas Cautley Newby', '1847-12-01', 0),
(15, '9780140268867', 4, 'The Odyssey', 'Homer', 'Ancient Greece', '-800-01-01', 0),
(16, '9780143058144', 1, 'Crime and Punishment', 'Fyodor Dostoevsky', 'The Russian Messenger', '1866-01-01', 0),
(17, '9780140275360', 4, 'The Iliad', 'Homer', 'Ancient Greece', '-750-01-01', 0),
(18, '9780140449129', 2, 'Madame Bovary', 'Gustave Flaubert', 'Revue de Paris', '1856-01-01', 0),
(19, '9780142437223', 4, 'The Divine Comedy', 'Dante Alighieri', '1320', '1320-01-01', 0),
(20, '9780140449242', 1, 'The Brothers Karamazov', 'Fyodor Dostoevsky', 'The Russian Messenger', '1880-01-01', 0),
(21, '9780140444308', 2, 'Les Misérables', 'Victor Hugo', 'A. Lacroix, Verboeckhoven & Cie', '1862-01-01', 0),
(22, '9780140449266', 2, 'The Count of Monte Cristo', 'Alexandre Dumas', 'Journal des débats', '1845-01-01', 0),
(23, '9780060934347', 2, 'Don Quixote', 'Miguel de Cervantes', 'Francisco de Robles', '1605-01-16', 0),
(24, '9780199535675', 1, 'Ulysses', 'James Joyce', 'Shakespeare and Company', '1922-02-02', 0),
(25, '9780143039433', 1, 'The Grapes of Wrath', 'John Steinbeck', 'The Viking Press-James Lloyd', '1939-04-14', 0),
(26, '9780060883287', 1, 'One Hundred Years of Solitude', 'Gabriel Garcia Marquez', 'Harper & Row', '1967-06-05', 0),
(27, '9780679723165', 2, 'Lolita', 'Vladimir Nabokov', 'Olympia Press', '1955-09-15', 0),
(28, '9781451626650', 1, 'Catch-22', 'Joseph Heller', 'Simon & Schuster', '1961-11-10', 0),
(29, '9781400033416', 1, 'Beloved', 'Toni Morrison', 'Alfred A. Knopf', '1987-09-02', 0),
(30, '9780679732242', 1, 'The Sound and the Fury', 'William Faulkner', 'Jonathan Cape and Harrison Smith', '1929-10-07', 0),
(31, '9781853260391', 2, 'A Tale of Two Cities', 'Charles Dickens', 'Chapman & Hall', '1859-04-30', 0),
(32, '9781451626650', 1, 'Catch-22', 'Joseph Heller', 'Simon & Schuster', '1961-11-10', 0),
(33, '9781503280786', 2, 'Moby-Dick', 'Herman Melville', 'Harper & Brothers', '1851-10-18', 0),
(34, '9780486282114', 2, 'Frankenstein', 'Mary Shelley', 'Lackington, Hughes, Harding, Mavor & Jones', '1818-01-01', 0),
(35, '9781594631931', 1, 'The Kite Runner', 'Khaled Hosseini', 'Riverhead Books', '2003-05-29', 0),
(36, '9780590353427', 2, 'Harry Potter and the Sorcerers Stone', 'J.K. Rowling', 'Bloomsbury', '1997-06-26', 0),
(37, '9780307387899', 1, 'The Road', 'Cormac McCarthy', 'Alfred A. Knopf', '2006-09-26', 0),
(38, '9780143035008', 2, 'Anna Karenina', 'Leo Tolstoy', 'The Russian Messenger', '1877-01-01', 0),
(39, '9780156027328', 1, 'Life of Pi', 'Yann Martel', 'Knopf Canada', '2001-09-11', 0),
(40, '9781416548942', 2, 'Gone with the Wind', 'Margaret Mitchell', 'Macmillan Publishers', '1936-06-30', 0),
(41, '9780061122415', 1, 'The Alchemist', 'Paulo Coelho', 'HarperTorch', '1988-01-01', 0),
(42, '9780679781585', 2, 'Memoirs of a Geisha', 'Arthur Golden', 'Alfred A. Knopf', '1997-09-27', 0),
(43, '9780307743657', 1, 'The Shining', 'Stephen King', 'Doubleday', '1977-01-28', 0),
(44, '9780486411095', 2, 'Dracula', 'Bram Stoker', 'Archibald Constable and Company', '1897-05-26', 0),
(45, '9780684801223', 1, 'The Old Man and the Sea', 'Ernest Hemingway', 'Charles Scribners Sons', '1952-09-01', 0),
(46, '9780385490818', 1, 'The Handmas Tale', 'Margaret Atwood', 'McClelland and Stewart', '1985-08-17', 0),
(47, '9780141439563', 1, 'Great Expectations', 'Charles Dickens', 'Chapman & Hall', '1861-08-01', 0),
(48, '9780440180296', 1, 'Slaughterhouse-Five', 'Kurt Vonnegut', 'Delacorte', '1969-03-31', 0),
(49, '9780141439570', 1, 'The Picture of Dorian Gray', 'Oscar Wilde', 'Lippincotts Monthly Magazine', '1890-06-20', 0),
(50, '9780345391803', 1, 'The Hitchhikers Guide to the Galaxy', 'Douglas Adams', 'Pan Books', '1979-10-12', 0);


-- --------------------------------------------------------

-- 
-- Table structure for table `borrow`
--

-- Create the borrow table
CREATE TABLE `borrow` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `date_borrow` date NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Insert 20 sample data entries into the borrow table
INSERT INTO `borrow` (`id`, `student_id`, `book_id`, `date_borrow`, `status`) VALUES
(1, 1, 1, '2024-06-01', 1),
(2, 2, 2, '2024-06-02', 1),
(3, 3, 3, '2024-06-03', 1),
(4, 4, 4, '2024-06-04', 1),
(5, 5, 5, '2024-06-05', 1),
(6, 6, 6, '2024-06-06', 1),
(7, 7, 7, '2024-06-07', 1),
(8, 8, 8, '2024-06-08', 1),
(9, 9, 9, '2024-06-09', 1),
(10, 10, 10, '2024-06-10', 1),
(11, 11, 11, '2024-06-11', 1),
(12, 12, 12, '2024-06-12', 1),
(13, 13, 13, '2024-06-13', 1),
(14, 14, 14, '2024-06-14', 1),
(15, 15, 15, '2024-06-15', 1),
(16, 16, 16, '2024-06-16', 1),
(17, 17, 17, '2024-06-17', 1),
(18, 18, 18, '2024-06-18', 1),
(19, 19, 19, '2024-06-19', 1),
(20, 20, 20, '2024-06-20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Engineering'),
(2, 'Mathematics'),
(3, 'Science and Technology'),
(4, 'History'),
(5, 'Literature'),
(6, 'Biography'),
(7, 'Business'),
(8, 'Art'),
(9, 'Health'),
(10, 'Philosophy'),
(11, 'Psychology'),
(12, 'Religion'),
(13, 'Music'),
(14, 'Cooking'),
(15, 'Travel'),
(16, 'Sports'),
(17, 'Fashion'),
(18, 'Gardening'),
(19, 'Education'),
(20, 'Language'),
(21, 'Law'),
(22, 'Politics'),
(23, 'Economics'),
(24, 'Sociology'),
(25, 'Anthropology'),
(26, 'Environment'),
(27, 'Architecture'),
(28, 'Film'),
(29, 'Technology'),
(30, 'Physics'),
(31, 'Chemistry'),
(32, 'Biology'),
(33, 'Medicine'),
(34, 'Astronomy'),
(35, 'Geology'),
(36, 'Psychiatry'),
(37, 'Drama'),
(38, 'Mythology'),
(39, 'Fantasy'),
(40, 'Horror'),
(41, 'Thriller'),
(42, 'Romance'),
(43, 'Self-help'),
(44, 'Motivational'),
(45, 'Journalism');


-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `code` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `title`, `code`) VALUES
(1, 'Bachelor of Science in Information Technology', 'BSIT'),
(2, 'Bachelor of Science in Computer Science', 'BSCS'),
(3, 'Bachelor of Arts in English Literature', 'BAEL'),
(4, 'Bachelor of Business Administration', 'BBA'),
(5, 'Bachelor of Engineering in Civil Engineering', 'BEngCE'),
(6, 'Bachelor of Science in Nursing', 'BSN'),
(7, 'Bachelor of Fine Arts in Graphic Design', 'BFA-GD'),
(8, 'Bachelor of Science in Psychology', 'BSP'),
(9, 'Bachelor of Science in Biology', 'BSB'),
(10, 'Bachelor of Education', 'BEd'),
(11, 'Bachelor of Laws', 'LLB'),
(12, 'Bachelor of Medicine, Bachelor of Surgery', 'MBBS'),
(13, 'Bachelor of Arts in Economics', 'BAEC'),
(14, 'Bachelor of Science in Environmental Science', 'BSES'),
(15, 'Bachelor of Architecture', 'BArch'),
(16, 'Bachelor of Arts in History', 'BAH'),
(17, 'Bachelor of Science in Mathematics', 'BSM'),
(18, 'Bachelor of Music', 'BMus'),
(19, 'Bachelor of Science in Physics', 'BSP'),
(20, 'Bachelor of Arts in Sociology', 'BAS'),
(21, 'Bachelor of Science in Chemistry', 'BSC'),
(22, 'Bachelor of Fine Arts in Studio Art', 'BFA-SA'),
(23, 'Bachelor of Science in Geology', 'BSG'),
(24, 'Bachelor of Science in Business Management', 'BSBM'),
(25, 'Bachelor of Arts in Political Science', 'BAPS');

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `date_return` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Insert 20 sample data entries into the returns table
INSERT INTO `returns` (`id`, `student_id`, `book_id`, `date_return`) VALUES
(1, 1, 1, '2024-06-10'),
(2, 2, 2, '2024-06-11'),
(3, 3, 3, '2024-06-12'),
(4, 4, 4, '2024-06-13'),
(5, 5, 5, '2024-06-14'),
(6, 6, 6, '2024-06-15'),
(7, 7, 7, '2024-06-16'),
(8, 8, 8, '2024-06-17'),
(9, 9, 9, '2024-06-18'),
(10, 10, 10, '2024-06-19');
-- --------------------------------------------------------

--
-- Table structure for table `students`
--

-- Create the students table
CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `student_id` varchar(15) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Insert 40 sample data entries into the students table
INSERT INTO `students` (`id`, `student_id`, `firstname`, `lastname`, `photo`, `course_id`, `created_on`) VALUES
(1, '2023001', 'John', 'Smith', '', 1, '2024-06-24'),
(2, '2023002', 'Emily', 'Johnson', '', 2, '2024-06-24'),
(3, '2023003', 'Michael', 'Williams', '', 3, '2024-06-24'),
(4, '2023004', 'Emma', 'Jones', '', 4, '2024-06-24'),
(5, '2023005', 'Daniel', 'Brown', '', 5, '2024-06-24'),
(6, '2023006', 'Olivia', 'Davis', '', 6, '2024-06-24'),
(7, '2023007', 'Matthew', 'Miller', '', 7, '2024-06-24'),
(8, '2023008', 'Sophia', 'Wilson', '', 8, '2024-06-24'),
(9, '2023009', 'William', 'Moore', '', 9, '2024-06-24'),
(10, '2023010', 'Isabella', 'Taylor', '', 10, '2024-06-24'),
(11, '2023011', 'James', 'Anderson', '', 11, '2024-06-24'),
(12, '2023012', 'Grace', 'Thomas', '', 12, '2024-06-24'),
(13, '2023013', 'Benjamin', 'Jackson', '', 13, '2024-06-24'),
(14, '2023014', 'Ava', 'White', '', 14, '2024-06-24'),
(15, '2023015', 'Alexander', 'Martinez', '', 15, '2024-06-24'),
(16, '2023016', 'Mia', 'Garcia', '', 16, '2024-06-24'),
(17, '2023017', 'Ethan', 'Robinson', '', 17, '2024-06-24'),
(18, '2023018', 'Charlotte', 'Hernandez', '', 18, '2024-06-24'),
(19, '2023019', 'Jacob', 'Lopez', '', 19, '2024-06-24'),
(20, '2023020', 'Amelia', 'Lewis', '', 20, '2024-06-24'),
(21, '2023021', 'Logan', 'Walker', '', 21, '2024-06-24'),
(22, '2023022', 'Ella', 'Perez', '', 22, '2024-06-24'),
(23, '2023023', 'Noah', 'Hall', '', 23, '2024-06-24'),
(24, '2023024', 'Lily', 'Young', '', 24, '2024-06-24'),
(25, '2023025', 'Liam', 'Scott', '', 25, '2024-06-24'),
(26, '2023026', 'Avery', 'Green', '', 26, '2024-06-24'),
(27, '2023027', 'Lucas', 'Adams', '', 27, '2024-06-24'),
(28, '2023028', 'Harper', 'Nelson', '', 28, '2024-06-24'),
(29, '2023029', 'Mason', 'Baker', '', 29, '2024-06-24'),
(30, '2023030', 'Evelyn', 'King', '', 30, '2024-06-24'),
(31, '2023031', 'Logan', 'Rivera', '', 31, '2024-06-24'),
(32, '2023032', 'Abigail', 'Torres', '', 32, '2024-06-24'),
(33, '2023033', 'Elijah', 'Gonzalez', '', 33, '2024-06-24'),
(34, '2023034', 'Aria', 'Mitchell', '', 34, '2024-06-24'),
(35, '2023035', 'Oliver', 'Perez', '', 35, '2024-06-24'),
(36, '2023036', 'Sofia', 'Roberts', '', 36, '2024-06-24'),
(37, '2023037', 'Jackson', 'Cook', '', 37, '2024-06-24'),
(38, '2023038', 'Madison', 'Murphy', '', 38, '2024-06-24'),
(39, '2023039', 'Aiden', 'Bailey', '', 39, '2024-06-24'),
(40, '2023040', 'Chloe', 'Reed', '', 40, '2024-06-24');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
    ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
