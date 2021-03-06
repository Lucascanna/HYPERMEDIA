-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Lug 19, 2016 alle 11:30
-- Versione del server: 10.1.13-MariaDB
-- Versione PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timdb`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `assistance`
--

CREATE TABLE `assistance` (
  `idAssistance` int(11) NOT NULL,
  `nameAssistance` varchar(40) COLLATE utf8_bin NOT NULL,
  `descriptionAssistance` longtext COLLATE utf8_bin NOT NULL,
  `idCategory` int(11) NOT NULL,
  `highlightsBoolean` smallint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `assistance`
--

INSERT INTO `assistance` (`idAssistance`, `nameAssistance`, `descriptionAssistance`, `idCategory`, `highlightsBoolean`) VALUES
(1, 'Landline activation', 'Requesting an activation of a home phone line is very simple, you can online request it online, call the customer service at 187, or go to a TIM Shop.', 1, 1),
(2, 'Moving telephone line', 'The move is an operation that allows you to move your telephone line at your new location in the same city or in a different city. You can manage it directly online simply registering to the Customer Area.', 1, 0),
(3, 'Takeover', 'The takeover allows you to change the registration of a phone line active at the same address where the facility is installed, thus ensuring continuity in the issue of invoices', 1, 0),
(4, 'Subscription variations', 'If you ceased your professional activities, you can request the change of your telephone subscription contract.\nTo request the change called the Customer Service 191.\n\nWith the request of the conversion of the contract from the Business category ("A") to the Residential category ("B") the cost of your monthly subscription will increase from:\n\n-€ 22.50 (VAT) to € 17.54 (VAT included 22%), in the case of basic telephone line\n-€ 31.00 (VAT) to € 20.17 (VAT included 22%), in case of ISDN line.', 1, 0),
(5, 'Products return', 'To cease the rental of a product, resulting in the interruption of the related subscription, simply call customer service fixed line 187 and then deliver or ship the product together with the accompanying form you can download from this page.\n\nIf you asked for the cancellation of the rental contract and Maintenance must return the product in the car (except for modem) no later than 30 days from the date of request for termination / cancellation of the contract and return it, exclusively at one of the TIM following shops:\n\nROME: Viale Liegi, 31\nMILAN: Piazza Cordusio snc - ang. Via Broletto\nNAPLES: Office District - Island A4\nPALERMO: Via of freedom, 37 / d\nTREVISO: Via XX Settembre, 2\n(No TIM shop outside of those listed in this list has enabled the return of products that have been asked for the cancellation of the rental agreement, therefore, under no circumstances, may decide to withdraw);\n\nor send it by parcel post to:\n\n        Telecom Italy S.p.A. c / o Geodis Logistics\n        Reverse stock A22\n        Piazzale George Ambrosoli snc\n        27015 Landriano PV\n\n\nThe postal package you have to attach the accompanying form you can download from this page.\n\nDownload the pdf form\n\n', 1, 1),
(6, 'All about your SIM', 'All you need to know to better manage your SIM:\n\n-PIN and PUK codes\n-What to do in case of theft or loss of the SIM\n-Replacement of your SIM\n-Reintegration of prepaid numbers', 1, 0),
(7, 'From subscription to rechargeable', 'If you hold a line subscription and want to switch to rechargeable service you can send your request to a TIM store or by submitting the necessary documents to the Customer Service 119. To change your audience by TIM rechargeable subscription service you can fill out the form "Request a subscription migration to rechargeable". The form is available in PDF format in the Modules section and can be downloaded directly from the subsection "subscription customers".\nYou can send the completed form with the request for termination of the subscription contract, and the will to move on to the specified rechargeable service (indicating the profile and the possible option) and repayment ACI mode (check / credit line of rechargeable), the number dedicated fax 800 600 119.\n\nYou can make the switch by writing to us or alternatively visiting any TIM Shop.', 1, 1),
(8, 'Premium services', 'The value-added services, also called ''premium'' or ''content'', are also part of the services provided by external companies through SMS, MMS or data connection from a landline (WEB) or mobile (WAP) that you can activate, receive and / or make use of phone, tablet or PC.\nThese are services such as: logos, ringtones, horoscopes, weather, news, videos, wallpapers and more.\n\nThe TIM Card, since its activation, is empowered to make / receive calls and video calls, send and receive SMS / MMS, browsing the internet, therefore, you can also activate the value added services (with the exception of TIM Card registered in the name minor for which to "Adult" content services are disabled).\n\nActivation of the service can take place following the activation procedure for each of the above mentioned channels (SMS, MMS, WEB, WAP etc.), But always and only with your consent.\n\nValue-added services are chargeable and charging arrangements (for each message and / or content, daily, weekly, monthly) vary depending on the type of service you have chosen to activate on your line. When you download content is therefore always important to verify if this means adherence to a subscription service with periodic debit your users.\n\nYou can disable a value-added service in one of the following ways:\n\nonline directly accessing the section MyTIM Mobile Services in TAB within the section "Services in content and Internet" in which to display the active content services on your line prior registration / authentication section MyTIM Mobile;\nVia the URL or this deactivation syntax welcome SMS notified by the supplier as a result of the activation of the service;\nBy calling the Customer Service of the service provider;\nSending a free SMS to 119 with the following text "Disabling VAS services";\nBy calling Customer Service 119.\nTo know in detail the numbers of available services, providers of content and the support numbers click here.\n\nPlus the ability to disable the single active on your online service, you also have the right to request at any time the selective blocking of value-added services as well as to prevent the FOR ACTIVATION and use on your mobile users, free of charge by calling the Customer Service 119 . You have also the right to request at any time and in the same way the inhibition of specific categories of value-added services:\n\nVM18 (sexy services unsuitable for children under 18);\nCharity (sms for charitable donations);\nAnonymous and Jokes (anonymous text messages);\nBL TuuTuuTIM (the ringback tone service with ringtone);\nBlack List Ticketing (bus ticket payment or by credit / phone bill);\nBanking services (information / notification banking services);\nas well as all lines Decade 4 or a single of these guidelines (Director 44, 47 or 48) always calling Customer Service 119 for free.\n\nYou can also request to re-enable your mobile users with value-added services free of charge by calling the Customer Service 119.\n\nIn addition to regular complaint procedures in the event of activation is not required of a value-added service on your TIM mobile users can also request a refund of the fees charged on your credit / telephone account and deactivate the service: by calling Customer Service 119 or by using the new method of sending a free sMS to 119 with the following text "complaint VAS services not required" (or similar) within 12 days after such activation and in the absence of a similar refund for the service within 30 days.', 1, 0),
(9, 'MyTIM Landline - line management', 'By registering on the MyTIM Fixed or by downloading the application for smartphones and tablets you will have all the information related to your telephone line.\n\nYou can see the services and the active offers on your phone line, pay your bills and get information about the traffic.', 1, 0),
(10, 'MyTIM Mobile - line management', 'With MyTIM Mobile you have available all the informations related to your telephone line.\n\nYou can keep you constantly updated on the active services on your line, on the characteristics of your SIM, or get informations relevant to your plan and to purchases made on the site and if necessary you can block your line for theft or loss.\n\n', 1, 0),
(11, 'Quick recharge', 'The service from Fast Reload tim.it site lets you charge your phone without the need to register: simply enter your details and in 3 clicks your line is recharged!\nThe charging cuts start at a minimum of € 6 and a maximum of 150 €.\n\nIt will be some simple information such as:\nTIM number to recharge.\nan email address to which you send the notification operation performed.\nthe data of your credit card or PayPal.\nThey accept major credit cards issued in Italy belonging to the Visa, Mastercard (including Carta, Postepay, Clarima and Bankamericard Deutsche Credit Card), American Express, Diners Card and Aura.\n\nN.B. We remind you that if you choose charging 6 € you will have € 5 credit and 500 MMS to be sent to all within 30 days. For full details on Reload + click here.', 1, 1),
(12, 'Telephone directories at your home', 'Annual service delivery of telephone directories\n\nThe delivery service of the telephone directories can receive each year, conveniently at the location address of your telephone system, lists of fixed line subscribers TIM and other telephone companies, updated to the current year. The service does NOT include the withdrawal of the Telephone Directories for previous editions.\n\nThe delivery of telephone directories is free of charge to the annual cost of 2.50 € (VAT included). The service fee is charged on bill TIM line home; It is not due any amount to the employees in charge of the distribution.\n\nWe remind you that you can give for free at any time to the service delivery of telephone directories, by telephoning the Customer Service fixed-line 187 or by sending a written communication to the address indicated on the invoice Telecom Italy or fax number 800 000 187 Green Customer Service; In this case, TIM will not charge more than the amount.\nFor more information about the service or to request it in case of foregoing disclaimer, please contact Customer Service 187, available 7 days out of 7, from 7.00 to 22.30.', 1, 0),
(13, 'Verify coverage', 'Login directly to "Check Coverage" and type in the town for which you are interested to receive coverage information, or select it from the map and get information on when signal is present:\n\n2G (GSM, GPRS and EDGE) (to make and receive phone calls / SMS / MMS and connect to the Internet)\n3G (UMTS and HSPA)\n4G (LTE)\n4GPLUS (LTE Advanced)\nAlways keep in mind that the reading given by the site refers to the entire town chose not to individual streets so it may happen that even with indication of coverage in the area, some small areas are not fully covered by the TIM signal; Therefore it is always advisable to carry out an audit on the field, even with a normal mobile phone and a TIM card. Also remember that, when present, the services and coverage are guaranteed only in outdoor, that is, outside of the buildings, and not in the home or the workplace.\n\nIf you have verified that your area is covered by TIM from a mobile phone service but the detected signal is low or absent, we recommend:\n\npower cycle the phone and try again; this simple maneuver can lead to an immediate solution to the problem.\nIf this does not solve:\n\nTo cross-test by inserting the SIM card on another phone to see if it works properly and so rule out the possibility that it is demagnetized. Simultaneously trying to insert another SIM on the phone from which it was found the problem in order to ensure that the same functions regularly;\nFinally, check if other TIM customers in your area have encountered the same problems, in which case it is clear that this is a problem not only linked to your phone line.\nIn the event that the signal problem is manifested by less than 24 hours, there may be a temporary disruption and we recommend that you wait.\n\n', 1, 0),
(14, 'MMS', 'MMS (Multimedia Message Service) allows you to send:\n\nText with more than 1000 characters.\nPhotos, pictures and videos.\nRingtones and sound files.\nMobile phones branded TIM have within them the correct settings to use the service. If necessary, to configure MMS or if you just want to check the settings, you can consult the manual configuration available within the Support section TIM.it, under "Configure Online", which will guide you in setting up the necessary parameters .\n\nN.B. If you do not know your phone model you can go directly to the section MyTIM Mobile.\nAfter logging-in with your username and password, you will have access to your personal area and your phone model it will be automatically recognized. Unless you have a compatible mobile phone with MMS technology or if your phone is not enabled to send and receive MMS, you can view the Multimedia message received on your line, accessing:\n\nIf you are already registered to the Mail, with your details (username and password).\nIf you are not registered, the web address that you can find in the SMS notification you receive, also containing the temporary password for viewing.\nFor rechargeable customers: you must have enough remaining credit to make this type of telephone traffic. Sending and receiving MMS is via data connection, and this is enabled only in response to the presence of residual credit on the user. In any case, the reception of multimedia messages on the national territory is free of charge.\n\nFor customers with a subscription: To send and receive MMS, the line must be enabled for data access; some lines via Subscription can be inhibited with such traffic.\nSend and receive MMS from abroad is as easy as when you''re in Italy, discover the Operators with which TIM has agreements.\n\nSend and receive MMS\n\nTo use MMS must occur the following conditions:\n\nType and size of the multimedia message allowed by your phone model.\nSIM 64K or higher.\nThe presence of the network signal.\nTraffic bought residue (if you are rechargeable customer).\nQualification of the TIM network (if you are a customer with a subscription).\nProper configuration of the TIM parameters for receiving / sending MMS\nEnough space in the phone''s memory.\nIf you do not receive some MMS must make sure that your phone is compatible with the media and has enough free memory. Where it was not possible to receive the MMS, you can see the content of the message through the mail service of our site.\n\nThe cost for sending an MMS from Italy to a national number depends on the tariff plan activated on your line. Remember, you can know all the details of your plan entering the section MyTIM Mobile by clicking on the name of your "base rate".\n\nThe reception of multimedia messages on the network in national territory data is free.\nKnow the outcome of your MMS, with the date, time of delivery and has been read, it''s free!\n\nAbroad, the charging of MMS sent and received varies depending on the foreign country that hosts you.\nMMS sent from Italy to international guidelines which the charge under ordinary national costs.', 1, 0),
(15, 'MyTim password recover', 'If you have forgotten or lost the password to access the section MyTIM Mobile, (which is the same as you used to log in Clients Area 119), click on Retrieve Password; you will receive a temporary password via SMS that you have to type.\n\nBe sure to get next to you on phone', 1, 0),
(16, 'Powerline Adapter', 'To overcome the wi-fi signal coverage problems you can use the Powerline Adapter devices that allow you to connect any device (eg. Decoder, PCs, game consoles, printers, etc.) to the modem Telecom Italian using home wiring .\n\nIn this way the home power grid becomes network to browse and transmit at speeds of up to 200 Mbps and confidentiality of data guaranteed through a special encryption system, without using long Ethernet cables and without installing additional software.', 2, 0),
(17, 'Voucher for mobile phones', 'Do you want a new smartphone?\n\nBring us your old phone, now worth a discount on new!\n\nBy TIM Rate service can be evaluated for free and without obligation on your mobile, smartphone or tablet. Receive an immediate discount to be used as best wishes: to purchase a new mobile phone, smartphone, tablet, stick, Internet Pack, or Reload telephone TIM. The service is open to all!\n\n\nTo evaluate the phone is very simple. It''s enough:\n\n• bring in one of TIM shops participating in the initiative in your old phone, smartphone or tablet\n• the employee of the store will proceed to evaluate the product, verifying the conditions and the state of use\n• If you accept the assessment, you will receive a discount of equal value that you can use right away to purchase a new smartphone, tablet, or phone Refills TIM.\n', 2, 0),
(18, 'iPhone Mail configuration', 'To add your Alice mail account on iPhone, tap the Settings icon from the menu:\n\nChoose your voice mail, contacts, calendars\nthen Add Account ...\nfrom the list of providers visit Other; touch Add account Mail\nfill in the fields with your details of the Alice mailbox:\nName: Enter a name of your choice;\nAddress: your full address of the domain @ alice.it;\nPassword: enter your email password.\n', 2, 0),
(19, 'Connect to mobile internet', 'Normally marketed by TIM phones are already prepared for the Internet connection automatically, otherwise you run the service configuration procedure.\nHere are the steps to take to find out whether your phone is configured:\n\nIf you have a TIM mobile phone, simply click on the icon of the Internet browser;\nIf you do not have a TIM mobile phone, simply click on the icon of the Internet browser and type the "wap.tim.it" address.\nIf you fail to connect in these ways, your phone needs to be configured.\n\nYou can do this manually by consulting the specific configuration guides for your device, available in the "Set up online", selecting from the menu on the make and model.\nIf you do not remember the specific model of your Smartphone or Tablet, you can check it entering MyTIM Mobile. Your device will be automatically detected and you can display make and model.\n\nFor some models you can set up your mobile browsing and MMS by calling the freephone number 40920 in an automatic, option 4.', 2, 0),
(20, 'Memotel', 'The answering service Memotel Telecom Italy will let you, no additional equipment, record up to 15 messages for a maximum time of 90 seconds each, and even listen to them away from fixed telephones or mobile phones via the personal PIN code.\n\nMemotel can be enabled on a traditional phone line, ISDN, and additional numbers of VoIP; It is a centralized service and works even in the absence of electric current (in the case of traditional telephony or ISDN).\n\n', 2, 0),
(21, 'I receive calls but I can''t make them', 'If you can not, nor to call, or to receive phone calls, lift the handset and closely assess what kind of plays signal. According to the voice you heard, follow the recommended directions to identify the cause of the problem.\n\nwrite to an operator your problem:\n\n-You Hear a continuous sound\n-You Hear an automated message\n-You Hear dial tone, but after dialing a number listening a "fast busy signal"\n-You Hear dial tone, but after dialing a number listening message and the call is forwarded\n-You Hear dial tone, but after dialing a number the call is forwarded', 2, 0),
(22, 'How to reconfigure phone numbers', 'If you need to reconfigure the numbers for the different devices (phone, fax or modem) connected to the analog ports (a1 / a2 and b1 / b2) of the NT1 Plus, follow depending on the type of your system.\n\nModes ''Point-to-Multipoint'' - number configuration on a1 / a2 and b1 doors / b2\n\nIf you have only one number and you want to connect one or more phones on the doors a1 / a2 and b1 / b2, dial the following code with a phone:\n\n', 2, 0),
(23, 'First installation', 'If you''ve enabled TIM SMART offer FIBER option with self-installing, follow the instructions in the guides and in the video for the first modem connection Fiber TIM and phones.\nThe pack contains a self-installing fiber\n\nthe modem box fiber with its power supply, filter, and connecting cables\nthe box containing the two cordless\nthe specific guide for self-installing fiber.', 2, 0),
(24, 'MyTIM LandLine costs', 'By registering to MyTIM Fixed or by downloading the application for smartphones and tablets you will have all the information related to your home line.\n\nYou can see the services and the active offers on your phone line, pay your bills and get information about the traffic.', 3, 1),
(25, 'MyTIM Mobile costs', 'In MyTIM Mobile you have to Provide all the information you need on your Mobile line.\n\nYou can keep abreast of the offering That TIM has designed for you, see your telephone traffic, check the remaining credit and perform refills, view and pay your bill online.\n\n', 3, 0),
(26, 'Verify your traffic', 'By accessing the Mobile MyTIM of our site you can check the details related to the carried traffic consumption.\n\nIf you have a prepaid line: you can check the details of the traffic carried from the previous day and up until the last two months of the date of consultation.\n \nIf you have a subscription: besides checking the balance of consumption in progress billing, you can check online and download the pdf of the telephone calls made within 90 days. the expiry date of the invoice reference.\n', 3, 0),
(27, 'SEPA (Single Euro Payments Area)', 'TIM has informed its customers, through a specific information message in the invoice, on the application of EU Regulation 260/2012 which provides, as of 1 February 2014, the mandatory replacement of the national direct debit service with the adoption the new European payment schemes (SEPA).\n\nDebit authorization in the account (SO-CALLED domiciliation bank and post RID) for the collection of recurring direct debits according to a national scheme, granted to the beneficiary of the payment before 1 February 2014, remain in effect after that date.\n\nTIM, as a beneficiary of the payment, then use over the next few months the new SEPA direct debit instruments, seamless than current RID mandates in place with its customers and will maintain the current mode of payment.\n\nIf the telephone user charges were domiciled in a current account payable to person other than the holder of the subscription agreement, TIM will invite the holder of the subscription to forward communication contract on the next migration to SEPA also the holder of the bank account where the domiciliation is activated.\n\n\nWhat is SEPA?\nSEPA (Single Euro Payments Area or Single Euro Payments Area) means a European Union initiative for integration in the area of ​​payment systems. After the introduction of euro coins and banknotes in euros in 2002, the European authorities, in particular the European Commission and the European Central Bank, in agreement with the governments of the EU countries, have focused the market on the integration of payments in Euros.\n\nThe harmonization and integration of the multitude of existing direct debit and credit transfer schemes in the different countries of the European Union and replacing them with common patterns of payments and used throughout Europe is an essential step towards the completion of the introduction of '' euro as currency monetary settlement.', 3, 1),
(28, 'Promotions and automatic renewals', 'If you have a Rechargeable line and you purchased a promotion that provides for the periodic renewal of a traffic bundle calls, SMS or Internet browsing, we remind you that the renewal option will last longer than 4 hours from midnight on the expiration date from ''offering. Renewal is always confirmed with an SMS.\n\nPlease remember to verify that the day of your renewal TIM Card has enough credit.\n\nBefore you use the service please anyway to verify a successful renewal of the bundle provided by the Promotion by calling the freephone number 40916 (for customers Rechargeable).\n\nYou can also always check the status of your promotion by consulting the MyTIM Mobile, browsing by phone on TIM.it site optimized for your Smartphone or through the app MyTIM Mobile.', 3, 0),
(29, 'TIM Online report', 'The free service TIM Online Statement, allows you to view and print your telephone TIM statement, valid for tax purposes, directly from MyTIM Site Mobile TIM.it.\n\nIf you have signed a new subscription TIM, within your own otherwise stated, the "Tim Online" Statement service is already active: you will receive a notification via SMS and email (if you have already signed up for Mobile MyTIM or provided and certified an address e-mail) when a new telephone statement will be available in MyTIM Mobile.\n\nThe registration for MyTIM Mobile TIM.it is required to use the service.\n\nAnd if you receive a paper invoice and want to turn the TIM Statement OnLine, follow these simple steps:\n\nAccess MyTIM Mobile tim.it site, or click on the item Register if you are not yet a registered user.\nClick on the ACTIVE button that you will find, once you sign in, the area dedicated within the section "Your telephone Statement."\nSimilarly you can, whenever you want, deactivate the service, thereby restoring the sending of telephone reporting in print.\n\nThe activation or deactivation of the service "Online Statement TIM", with its elimination or recovery of sending paper statements, will start in two months of billing where the request was made.\n\nWith the service active your new billing address will be your MyTIM Mobile and email is welcome that the availability of the report, you will be sent to the last email address you provided and validated; at the same address you will be sent email reminding you to make the statement downloads within five days of its publication on the website.\n\nWe remind you, that will be available online the accounts for the last 6 month periods issued.\n\nIf you have not domiciled payments, with the service "TIM Online" flow statement, it will not be delivered on premarcato bulletin. To make payment of the report you can choose from the other available payment methods.', 3, 0),
(30, 'Consumes documentation', 'It is a free service and upon request and help you get every month with your bill, the details of phone calls made and services used.\n\nReport calls made from your phone line indicating the type of call (eg. Local, long distance, etc.) Bid in which the call is part of the date, time, number dialed with the latest figures asterisked , the tariff range, duration and cost.\n\nThe documentation of consumption is available in two modes:\n\nintegral, where all calls are listed\nmore than 26 cents, only lists with phone calls over this amount charged.\n', 3, 1),
(31, 'Mobile invoice domiciliation', 'Choosing the domiciliation of the current account debit of the invoice is made directly to the bank or post office account.\n\nThis way you no longer have the need to store the payment deadlines, which are carried out without delay.\n\nOf course the bill of the mobile line is sent to you and / or made available on the web in MyTIM Mobile sufficiently in advance before the deadline, so you have the ability to make the necessary checks and, if necessary, ask your bank or the postal agency suspension of payment if there are inconsistencies. The charge is carried out on the last day for payment. You still have the power to reverse a debit domiciled within 8 weeks since it was made.\n\nIf you hold a bank or postal account, you can fill out and send directly online permanent authorization form a debit account. You can do this in the "Modules", selecting "Customers with Subscription" and pressing the "FILL" in the entry "Request Domiciliazione Banking"\n\nAlternatively you can download the pdf version of the form "Request Domiciliazione Banking" which, completed and signed, must be sent in a sealed envelope to the following address:\n\nTelecom Italy S.p.A. c / o ABRAHAM COSTUMER CARE\nPO Box 500-88900 Crotone.\n ', 3, 1),
(32, 'How to see invoices', 'The landline bill is simple and easy to read because designed inspired by customer feedback. The graphic design, modern and refined, using an ever clearer language for the display of items of expenditure, making it easier to read all the information you need and ensuring greater transparency in the content and in the amounts.\n', 3, 1),
(33, 'How to pay invoices', 'Transfer to Income Online and save up to 2 € / month for the reception costs of paper bill.', 3, 0),
(34, 'Verify remaining credit', 'The remaining credit available, the offers and the status of active bonus on your rechargeable line, are available through the following ways:\n\nRight from your Smartphone, signing into the MyTIM Mobile, currently available for free download in versions for iPhone and smartphones with Android operating system.\nIn the presence of two or more bonus priority is the one with the most immediate expiration.\n\nWe remind you that in the euro bonus can not be used for international calls, for calls to non-geographic numbers (in Italy and abroad) and for roaming traffic (with the exception of traffic data roaming).', 3, 1),
(35, 'Basic rate for surfing', 'Flat Day is the base rate for the surf the Internet from Smartphone, Tablet PC, and for a maximum of 500MB per day at a cost of 4 € (VAT included).\n\nThe Flat Day base rate intervenes in the absence of active offer data about your line. In this condition if you make an Internet connection takes a 4 € daily fee for 500MB of data traffic to be used within the same day (until 23:59).\n\nThe cost of the Flat Day is only charged on days of actual use to the first connection event. On reaching 500MB of data traffic in the day, the browsing speed is reduced to 32 Kbps at no additional cost. The MB of traffic available in the day are counted to prepaid unit increments of 1KB. Any Internet traffic not consumed in the day is reset.\n\nPlease note:\n\nThe daily rate is valid for Internet browsing in Italy of all APN (ibox.tim.it, wap.tim.it and blackberry.net).\nThe traffic coin purchased is accessible only on national territory until 23:59 the same day.\nIf you have active on your line bid TIM data to navigate from Smatphone, and Tablet PCs, which provides for the automatic renewal weekly or monthly, remember that the renewal takes place within 4 hours from midnight on the expiration date, but if you make data traffic before that the offer has been renewed, it will be charged at the Flat Day. so remember to always verify a successful renewal of your data offering through 40916 (customers Rechargeable) or 40915 (Subscription customers), through the app MyTIM Mobile or via the web by accessing the MyTIM Mobile.\nRemember that TIM allows you to protect your monthly spending to surf the Internet with Smartphone, and Tablet PC. Click here for more details.\nIf you plan to use your Internet browsing, as an alternative to the Flat Day service, we recommend you activate one of the TIM data offers choosing the one that best matches your requirements. For more information about available offers click here or went to a TIM Shop.\n', 3, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `categoriesassistance`
--

CREATE TABLE `categoriesassistance` (
  `idCategory` int(11) NOT NULL,
  `nameCategory` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `photoCategory` varchar(30) COLLATE utf8_bin NOT NULL,
  `descriptionCategory` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `categoriesassistance`
--

INSERT INTO `categoriesassistance` (`idCategory`, `nameCategory`, `photoCategory`, `descriptionCategory`) VALUES
(1, 'Telephone Line administration', 'gestionelinea.png', 'You can active your home line, manage your SIM, or know how to switch to TIM\n'),
(2, 'Technical support and configuration', 'supportotecnico.png', 'How to read your invoices, verify your credits and bonuses, and informations about our tariffes'),
(3, 'Payments and costs', 'controllocosti.png', 'Tablet and smartphone configurations, telephone line support, ADSL, fiber, ISDN lines, PC security\n'),
(4, 'Highlights', 'promotions.png', 'Frequently needed assistance services');

-- --------------------------------------------------------

--
-- Struttura della tabella `productassistance`
--

CREATE TABLE `productassistance` (
  `idProduct` int(11) NOT NULL,
  `idAssistance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `productassistance`
--

INSERT INTO `productassistance` (`idProduct`, `idAssistance`) VALUES
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 18),
(1, 19),
(1, 21),
(1, 25),
(1, 33),
(1, 34),
(2, 6),
(2, 7),
(2, 8),
(2, 10),
(2, 14),
(2, 15),
(2, 19),
(2, 21),
(2, 25),
(3, 6),
(3, 7),
(3, 8),
(3, 10),
(3, 13),
(3, 14),
(3, 15),
(3, 19),
(3, 21),
(3, 25),
(4, 6),
(4, 7),
(4, 8),
(4, 10),
(4, 15),
(4, 19),
(4, 21),
(4, 25),
(4, 30),
(5, 6),
(5, 7),
(5, 8),
(5, 10),
(5, 19),
(5, 21),
(5, 25),
(5, 26),
(6, 10),
(6, 14),
(6, 19),
(6, 21),
(6, 25),
(6, 26),
(6, 29),
(6, 34),
(7, 10),
(7, 13),
(7, 14),
(7, 15),
(7, 19),
(7, 21),
(7, 26),
(7, 28),
(8, 6),
(8, 7),
(8, 13),
(8, 20),
(8, 21),
(8, 22),
(8, 24),
(9, 6),
(9, 7),
(9, 10),
(9, 15),
(9, 19),
(9, 21),
(9, 29),
(9, 32),
(10, 5),
(10, 13),
(10, 18),
(10, 19),
(10, 21),
(10, 25),
(10, 30),
(11, 10),
(11, 13),
(11, 15),
(11, 19),
(11, 21),
(11, 25),
(12, 10),
(12, 15),
(12, 19),
(12, 27),
(13, 10),
(13, 13),
(13, 15),
(13, 19),
(13, 21),
(13, 25),
(13, 32),
(13, 33),
(14, 10),
(14, 15),
(14, 19),
(14, 21),
(14, 25),
(14, 31),
(14, 32),
(15, 5),
(15, 13),
(15, 25),
(15, 32),
(16, 5),
(16, 13),
(16, 14),
(16, 25),
(16, 30),
(16, 32),
(16, 34),
(17, 11),
(17, 25),
(17, 27),
(17, 28),
(17, 32),
(17, 35),
(18, 25),
(18, 32),
(18, 33),
(18, 35),
(19, 5),
(19, 25),
(19, 28),
(19, 29),
(19, 32),
(20, 25),
(20, 29),
(20, 31),
(20, 32),
(21, 25),
(21, 27),
(21, 32),
(22, 1),
(22, 2),
(22, 9),
(22, 16),
(22, 22),
(22, 23),
(23, 3),
(23, 4),
(23, 9),
(23, 16),
(23, 22),
(23, 23),
(24, 1),
(24, 4),
(24, 9),
(24, 16),
(24, 20),
(24, 22),
(24, 23),
(24, 24),
(24, 33),
(25, 1),
(25, 9),
(25, 12),
(25, 16),
(25, 22),
(25, 23),
(25, 33),
(26, 4),
(26, 9),
(26, 12),
(26, 16),
(26, 22),
(26, 23),
(26, 27),
(27, 8),
(27, 28),
(27, 35),
(28, 33),
(28, 34),
(29, 17),
(29, 30),
(30, 8),
(30, 17),
(31, 8),
(31, 17),
(32, 8),
(32, 17),
(33, 8),
(33, 17),
(34, 8),
(34, 17),
(35, 8),
(35, 17),
(36, 17),
(36, 34),
(37, 8),
(37, 17);

-- --------------------------------------------------------

--
-- Struttura della tabella `products`
--

CREATE TABLE `products` (
  `idProduct` int(11) NOT NULL,
  `nameProduct` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `photoProduct` varchar(30) COLLATE utf8_bin NOT NULL,
  `priceProduct` int(11) NOT NULL,
  `descriptionProduct` mediumtext COLLATE utf8_bin NOT NULL,
  `technology` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `connectivity` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `gps` varchar(16) COLLATE utf8_bin DEFAULT NULL,
  `display` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `processor` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `memory` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `camera` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `sim` varchar(16) COLLATE utf8_bin DEFAULT NULL,
  `audio` varchar(16) COLLATE utf8_bin DEFAULT NULL,
  `video` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `dimensions` varchar(24) COLLATE utf8_bin DEFAULT NULL,
  `weight` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `promotionProduct` tinyint(1) NOT NULL DEFAULT '0',
  `idCategory` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `products`
--

INSERT INTO `products` (`idProduct`, `nameProduct`, `photoProduct`, `priceProduct`, `descriptionProduct`, `technology`, `connectivity`, `gps`, `display`, `processor`, `memory`, `camera`, `sim`, `audio`, `video`, `dimensions`, `weight`, `promotionProduct`, `idCategory`) VALUES
(1, 'iPhone 6s 16gb', 'iphone6s.jpg', 789, 'Display Retina HD of 4,7" with 3D Touch. Aluminum series 7000 and glass more resistant. Chip A9 with 64 bit-architecture desktop-level. New camera iSight of 12MP with Live Photos. Touch ID. Connections Wi-Fi e 4G LTE faster.1 Long-life battery.2 And more, iOS 9 and iCloud. All this in an elegant unibody shell.\n', 'iOS 9 and iCloud', '4G LTE Advanced1 and Wi-Fi 802.11a/b/g/n/ac with MIMO techonolog', 'yes', 'Display Retina HD of 4,7" with 1334x75 risolution', 'Chip A9 with integrated M9 coprocessor of movement', '16 GB', 'Camera iSight of 12 megapixel with Focus Pixels, True Tone Fl', NULL, NULL, '4K video registration at 30 fps, slow-motion (1080p) at 120 fps,', '138,3 mm, 67,1 mm, 7,1 m', '143 g', 1, 1),
(2, 'Nokia Lumia 950', 'lumis.jpg', 500, 'Higher level functions, eccellent design and the best experience with Windows 10: choose Lumia 950 and transform any moment in a big conquest.\r\n', '\r\n4G cat.6/HSDPA 42/UMTS/EDGE/GPRS Frequencies 850/900/1800/1900', 'Wi-Fi - Bluetooth - Micro USB - NFC ', 'Integrated', '5.2” 16 Million colors Touch', 'HexaCore 1.8 GHz', '32 GB', '20 Mpixel/Flash', 'Micro SD up to ', 'MP3 Player', 'Video Recorder&Playback', '45x73,2x8,25 mm\r\n\r\n', '\r\n150 g', 0, 1),
(3, 'LG G5', 'lg.jpg', 600, 'The new LG G5 is a new kind of smartphone which comes through all limits, with a modular desing completely built in metal which revolutionizes design standards. Exapand functions, interact with innovative LG Friends and try a really innovative smartphone experience. The G5 revolution keeps going with the double wide-angle lens camera, which captures more than what your eyes can see. Also under the sun, because the new display IPS Quantum is richer, brighter and more colored even under directly the light of sun. And it always shows you main notifications even when its not active. New LG G5: what you dont expect, in your own hand.', '4G cat.6/HSDPA42/UMTS/EDGE/GPRS  Frequencies 850/900/1800/1900/2', 'Wi-Fi - Bluetooth – Infrared - USB type C – NFC', 'integrated', '5.3” 16 Million colors Touch', 'Processor Snapdragon™ 820 QuadCore 2.15 GHz - 4G LTE', '32GB\r\nSlot Memory Card Micro SD up to 2TB', '2 back cameras of 16 Mpxl with flash and front camera', 'Nano', 'MP3 Player', 'Video Recorder&Playback', '149,4x73,9x7,3 mm\r\n\r\n', '159 g', 0, 1),
(4, 'Samsung Galaxy S6', 'samsungs6.jpg', 639, 'Inspired by the shape of the artists , such as glassmakers and blacksmiths workshop , Samsung Galaxy S6 is the perfect combination of finely forged materials with each other . An unprecedented revelation made not only of extraordinary shape and shiny surfaces , but also of excellent substance with a wide spectrum of even more vibrant colors.', '4G cat.6/HSDPA42/UMTS/EDGE/GPRS Frequencies 850/900/1800/1900/21', 'Wi-Fi - Bluetooth - Micro USB - NFC', 'Integrated', '5.7” 16 Million colors Touch', 'OctaCore: (QuadCore 2.1 Ghz+QuadCore 1.5 Ghz)', '32GB', '16 Mpixel/Flash', 'Nano', 'MP3 Player', 'Video Recorder&Playback', '154,4x75,8x6,9 mm', '153 gr', 0, 1),
(5, 'Sony Xperia', 'sony.jpg', 629, 'A smartphone with inimitable performance that integrates a stunning camera that can predict the next movement of the subject..', 'Technology 4G/HSDPA 42/UMTS/EDGE/GPRS Frequencies 850/90', 'Wi-Fi - Bluetooth - Micro USB - NFC', 'Integrated', 'Full HD of 5” 1080p, Display TRILUMINOS', 'Processor Qualcomm® Snapdragon™ 650 Hexa-Core (1.8 GHz + 1.4 GH', 'Internal 3GB - Slot Memory Card Micro SD up to 200GB', 'Back of 23 Mpixel Exmor, Front of 13 Mpxl', 'Nano', 'MP3 Player - Rad', 'Video Recorder&Playback', '143,7 x 70,5 x 8,6 mm', '165 gr', 1, 1),
(6, 'Huawei P9', 'huaweip9.jpg', 600, 'Huawei P9 shows its design lines with a strong visual impact , characterized by diamond -cut edges and rounded to perfection . The smartphone has a unibody structure in aerospace aluminum and glass 2.5D of higher category, and it is available in two colors: Titanium Grey and Mystic Silver.', 'Technology 4GPlus/4G/HSDPA 42/UMTS/EDGE/GPRS Frequencies', '4G cat.6/HSDPA42/UMTS/EDGE/GPRS Frequencies 850/900/1800/1900/21', 'GPS Integrated', 'Display IPS Full HD da 5.2’’', 'Processor Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)', '32GB', NULL, 'Nano', '', NULL, '145 x 70,9 x 6,95 mm', '144 gr', 0, 1),
(7, 'LG K8', 'lgk8.jpg', 180, 'The new series K of LG offers you a range of smartphones that reflect your personality . LG K8 accompanies you on your travels and will surprise you with detailed selfies all to share with the network speed 4G LTE', '4G cat.4/HSDPA42/UMTS/EDGE/GPRS Frequencies 850/900/1800/1900/2', 'Wi-Fi - Bluetooth - Micro USB - NFC', 'Integrated', '5” 16 Million colors Touch', 'Processor QuadCore 1.3 GHz', '8GB with Slot Memory Card Micro SD up to 32GB', 'Back of 8 Mpxl with flash', 'Nano-sim', 'Video Recorder&P', 'MP3 Player - Radio FM', '144,6x71,5x8,7 mm', '142 gr.', 0, 1),
(8, 'TIM Facile', 'timfacile.jpg', 40, 'The forefront cordless, but FACILE to use\r\n\r\nFACILE MAXI è un cordless, practical, functional and elegant with excellent performance.\r\n\r\nIts display 1.8 " high-contrast large print ensures optimum readability ; the large keyboard with well spaced keys and illuminated facilitates dialing; the sound is crisp and clear , even in hands-free.\r\n\r\nFACILE MAXI protects the environment and saves energy by 60 % compared to a similar cordless previous generation , the consumption of the base in standby is less than 0,7W.', 'cordless DECT-GAP: energy-efficient system', NULL, NULL, 'from 1,8'''' display illuminated, 96X64 px, with date and hour', NULL, 'the phonebook can store up to 150 names and numbers', NULL, NULL, 'wide choice betw', NULL, '\r\nportable: 157 x 51 x ', 'basis: 198', 1, 1),
(9, 'Huawei P9 Plus', 'huawei.jpg', 750, 'The experience of Huawei P9 is elevated to a higher level with Huawei P9 Plus thanks to the bright display of 5.5 " and stylish metal body . Thanks to the perfect combination of hardware and superior double Leica camera class software , P9 Plus lets you capture the highest quality images without sacrificing the compact and stylish design.', '4G cat.6/HSPA+/EDGE/GPRS Frequencies 850/900/1800/1900Wi-Fi 802.', NULL, 'GPS Integrated, ', 'Display Full HD Amoled of 5.5’’’', 'Processor Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz)', '64GB, Micro SD up to 128 GB', 'Double Leica camera of 12 Mpxl Dual Flash + front of 8 M', NULL, NULL, NULL, '152.3 x 75.3 x 6.98 mm', '162 g', 0, 1),
(10, 'iPhone SE', 'iphonese.jpg', 500, 'The most powerful 4'' phone of ever. iPhone SE follow a highly succesfull compact design adding two advanced cameras and an incredible processing power. Designed to fit comfortably in your hand and be pleasant to the touch , thanks to the satin finish of the aluminum shell microsandblasted.\r\n\r\niPhone SE has a display Retina of 4’’, chip A9 with 64-bit architecture dextop-level, \r\nfingerprint sensor Touch ID, camera iSight of 12MP, videocamera FaceTime HD with Retina flash, Live Photos e connections Wi-Fi and 4G fast. And more, iOS 9 and iCloud.', 'system: iOS 9 and iCloud', '4G LTE', 'Integrated', 'Display Retina of 4" with 1136x640 pixel resolution\r\n\r\n', 'Chip A9 with 64-bit architecture, M9 Coprocessor of movement ', 'internal 64 GB', '\r\nCamera iSight of 12MP with Focus Pixels and flash True Tone ', NULL, NULL, 'Video registration 4K at 30fps, slowmotion at 240 fps, FaceTime ', NULL, NULL, 0, 1),
(11, 'ZTE Blade', 'zte.jpg', 80, 'Only TIM gives you the TIM SIM - Plus with 128 Kbytes of memory. The only card that allows you to exploit the full potential of your GSM and UMTS mobile phone by offering the most advanced and innovative services.', 'System Android 5.1', 'HSDPA21/UMTS/EDGE/GPRS - Wi-Fi - Bluetooth - Micro USB', 'Integrated', '5” 16 Million colors Touch', 'DualCore 1.3 GHz', '8GB - Slot Memory Card Micro SD up to 32GB', '8 Mpixel/Flash', 'Nano', 'MP3 Player - Rad', 'Video Recorder&Playback ', '143,5 x 71,8 x 8,6 mm', '\r\n142 gr.', 0, 1),
(12, 'Samsung Galaxy S6 Edge', 's6edge.jpg', 640, 'Inspired by the shape of the artists , such as glassmakers and blacksmiths workshop , Samsung Galaxy S6 is the perfect combination of finely forged materials with each other . An unprecedented revelation made not only of extraordinary shape and shiny surfaces , but also of excellent substance with a wide spectrum of even more vibrant colors .', '4GPLUS with System Android 5.', 'Wi-Fi - Bluetooth - Micro USB - NFC', NULL, '5.7” 16 Million colors Touch', 'OctaCore: (QuadCore 2.1 Ghz+QuadCore 1.5 Ghz)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(13, 'Samsung Galaxy S7', 'samsungs7.jpg', 830, 'Only TIM gives you the TIM SIM - Plus with 128 Kbytes of memory. The only card that allows you to exploit the full potential of your GSM and UMTS mobile phone by offering the most advanced and innovative services .', '4G cat.9/HSDPA42/UMTS/EDGE/GPRS Frequencies 850/900/1800/1900/21', 'Wi-Fi - Bluetooth - Micro USB - NFC', NULL, '5.1” 16 Million colors Touch', 'OctaCore (QuadCore 2.3GHZ+QuadCore 1.6GHZ)', NULL, NULL, NULL, NULL, 'Video Recorder&Playback', NULL, NULL, 1, 1),
(14, 'Huawei MateS', 'huaweimt.jpg', 500, 'Huawei Mate S opens a new world of unlimited possibilities that can revolutionize our lives with a perfect blend of precious design and extraordinary interactivity', 'System Android 6.0', 'LTE,4G, Wi-fi, bte ', 'Integrated', NULL, 'OctaCore: (QuadCore 2.1 Ghz+QuadCore 1.5 Ghz)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1),
(15, 'iPad Pro', 'ipadpro.jpg', 840, 'iPad Pro 9,7” is a never seen concentrated of protability and performance. It''s thick only 6,1mm and weighs less than 500gr, but it has the brightest and most advanced display Retina of ever: with is True Tone sensors it fits to natural light, so eyes dont overstrain. Besides it has the 64-bit chip A9X destop-level, audio at 4 speakers, camera iSight and videocamera FaceTime HD, fingerprint sensor Touch ID, Wi-Fi and 4G LTE super fast connections and up to 10 hours of autonomy.2 Advanced,1 even more? Add the ultra-precise Apple Pencil and Smart Keyboard, and iPad Pro will become even more essential.', 'System iOS 9 with fingerprint sensors Touch ID', '4G LTE Advanced1, Wi-Fi 802.11ac with MIMO technoology', NULL, 'Retina Display 9,7” with True Tone and front caoting', 'Chip A9X of third generation with 64-bit architecture', NULL, 'iSight of 12MP with video at 4K\r\n', NULL, NULL, 'FaceTime HD (photos of 5MP)', NULL, NULL, 0, 2),
(16, 'Galaxy Tab', 'galaxytab.jpg', 300, 'The essential style and metallic frame enhance the new format 4 : 3 , giving the Galaxy TAB a modern and sophisticated look , ensuring maximum mobility thanks to the 7.5 mm thick and just 456 grams weight.', 'System Android™ 4.4.2 KitKat', 'LTE /HSDPA 42.2/HSUPA 5.76/, Wi-Fi 802.11 a/b/g/n, Bluetooth 4.0', NULL, '8" (1280x800) 16M of colors', 'Snapdragon 400 Quad-Core 1.2 GHz', '16GB (expandable up to 64GB)', '2 cameras of 3.2 Mpx and 1.3 Mpx', NULL, NULL, NULL, NULL, NULL, 1, 2),
(17, 'Huawei Mediapad', 'huaweimediapad.jpg', 250, 'Discover TIM with 4G Internet and prepare to fly on the web with your Smartphone LTE . Thanks to the new LTE technology (Long Term Evolution) you will browse quickly , smoothly and with reliable performance.', NULL, '', NULL, '8" (1280x800) 16M of colors', 'Snapdragon 400 Quad-Core 1.2 GHz', '\r\n16GB (expandable up to 64GB)', '13Mpx', NULL, NULL, NULL, '209.8x123.8x7.9mm', '310 grams', 0, 2),
(18, 'iPad mini', 'ipadmini.jpg', 530, 'To view it seems really small , but is ready to surprise you with outstanding performance : the new iPad mini 4 , thinner and lighter than ever , has all the power you need to do great things.', 'System iOS 8', 'Wi-Fi 802.11n with MIMO technology + Cellular - 4G LTE faster', NULL, 'Retina of 7,9" ', 'Chip A7', NULL, 'Fotocamera iSight of 5MP', NULL, NULL, NULL, NULL, NULL, 1, 2),
(19, 'Samsung Galaxy Tab 4', 'galaxytab4.jpg', 200, 'Multiscreen function can open two windows simultaneously . Display 8 " with WXGA resolution for brilliant colors and high definition . Design and ease of handling , a cover soft feel and refined details', 'System iOS 8', 'Wi-Fi 802.11n with MIMO technology + Cellular - 4G LTE faster', NULL, 'Retina of 7,9" ', 'Chip A7', NULL, 'iSight of 5MP - Videocamera FaceTimeHD', NULL, NULL, NULL, NULL, NULL, 0, 2),
(20, 'Acer ICONIA', 'iconia.jpg', 300, 'Buy or give a new 3G tablet marketed by TIM have included Internet traffic for 30 days to navigate 20GB and 10GB of TIM Cloud to automatically save your address book and photos. \r\n\r\nThe promotion is completely free and you dont have to pay any fees for activation. ', 'System Windows 8.1 + Office Home & Students 2013', 'HSDPA 21.2/HSUPA 5,76/,Wi-Fi Direct 802.11 a/b/g/n, Bluetooth 4.', NULL, '8" (1280x800) IPS', 'Intel Atom Quad-Core 1.8GHz', '32GB, 2GB RAM', NULL, NULL, NULL, NULL, '218.9 x 134.9 x 10.75 mm', '420 grams', 0, 2),
(21, 'Alcatel ONE TOUCH', 'alcatel.jpg', 100, 'Samsung Galaxy Note 10.1" 4G expands with 4G LTE connectivity, the tablet range with the screen 10.1   allowing you to share photos and videos even faster. It also highlights a chipset Quad -core 1.4 GHz , 5.0 megapixel rear camera with LED flash , uses micro - SIM ( 3FF format) and is characterized by the operating system Android 4.1.2 (Jelly Bean ) being inside the  integration of Google Mobile Suite as well as a series of Samsung -specific applications to enhance the efficiency and convenience of the S Pen integrated into the structure. The tablet is a top- cry for connectivity device ( including DLNA and Bluetooth 4 ) and versatility , with a microSD card slot and infrared interface to control home devices.', 'System Operativo Android 4.2 JB', 'HSDPA 21 Mbps /HSUPA, Wi-Fi 802.11b/g/n, Bluetooth 4.0', NULL, '7" (1024x600) 16M di colori', 'MT8312 DualCore da 1.3 GHz', '4GB (expandable up to 32GB)', '2 Megapixel and 0.3 Mpx front', NULL, NULL, NULL, NULL, NULL, 1, 2),
(22, 'ZyXel Repeater', 'repeater.jpg', 50, 'ZyXEL WRE6505 Wireless AC750 Range Extender allows you to easily extend existing wireless networks 802.11 b / g / n / ac in easy and fast way. You simply have to connect the repeater directly to the power and the LED signal strength indicator socket allows you to determine the ideal mounting location . The one-click Wi - Fi Protected Setup ( WPS Button on page 12 ) provides for the  installation of the Wireless Client without frustration and complete in a few steps the access network configuration.', 'Wi-Fi b/g/n a 2.4 GHz with speed transmission up to 300 Mb', 'Association with modem ADSL in WPS modality', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3),
(23, 'AVM', 'avmrepeater.jpg', 90, 'With the new FRITZ!WLAN Repeater 1750E you can extend existing wireless networks, creating fast and stable connections which come up to 1300 Mbit/s with AC standard on frequency band of 5 GHz and at 450 Mbit/s with N standard on frequency band of 2,4 GHz.', 'Compatible with all Wi-Fi modems (also mobile)\r\n', 'Support Wi-Fi networks, up to 1750 Mbps at 2.4 and 5 GHz (dual b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '(L x H x P): more or les', NULL, 0, 3),
(24, 'Modem ADSL', 'modemtim.jpg', 70, 'Fast and wireless navigation\r\n\r\nWith Modem ADSL Wi-Fi you browse fast and wireless, using Wi-Fi interface or through 4 Ethernet gates.\r\n\r\nFaster navigation thanks to Wi-Fi wireless technology e better coverage of Wi-Fi network of your home(1).\r\nProtection: the WPA and WPA2 encryption prevents unauthorized access to the Wi - Fi network. Also available advanced features such as MAC address filtering and the integrated firewall .\r\nAll family connected : connect all PCs , smartphones and tablets to the new ADSL Wi - Fi modem and also share hard drive and printers connected to the USB port modem.\r\nNo problem installation : the modem will automatically configure itself on your ADSL line , without installing software.\r\nSave on electricity bills : the new modem , compared to a previous generation product Telecom Italy with the same functionality , saves up to 40 % of electricity on an average annual use (2).\r\nThe modem works only on Wi - Fi ADSL line Telecom Italy and is compatible with major operating systems (Windows 7, Vista, XP - MacOS 10.3).', '\r\nADSL/ADSL2+;speed up to 20 Mbps down/1 Mbps up ', 'Wi-Fi 802.11 b/g/n; transfer speed up to 300Mbps\r\n\r\n', NULL, NULL, NULL, 'Advanced rounting functions (DHCP server, NAT, NAPT, Virtual', NULL, NULL, NULL, NULL, NULL, NULL, 1, 3),
(25, 'Powerline Adapter', 'powerline.png', 50, 'Connect PC , modem and console using the power grid\r\n\r\nWant to transform your home electrical network into a network to browse and broadcast , where the wi - fi does not reach, data in digital format?\r\n\r\nWith Powerline Adapter you can do it.\r\n\r\nConnect between them PCs , modems and console without coverage problems , distance , or wiring : you just enter Powerline Adapter into your electrical outlets to create a home network that connects the various devices , with performance up to 200 Mbps.\r\n\r\nAnd the confidentiality of the data you transmit and receive is guaranteed by a cryptographic system.\r\n\r\nBuy Powerline Adapter in pairs directly on this site . You will receive it at home in free delivery.', 'network bridge RJ-45 on electric line with 1 gate Ethernet RJ-', 'up to 100Mbps on Ethernet gate and 200Mbps on electric line', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3),
(26, 'Repeater ZyXEL N300', 'repeaterz.jpg', 40, 'Easily extend your Wi - Fi network with the N300 repeater ZyXEL compact design with wall mounting and easy installation.\r\n\r\nThe product allows you to extend the coverage of Wi - Fi network as your modem inside the home easily and fast to any network 802.11b/g/n.\r\n\r\nTo install the repeater just plug it into an electrical outlet Wi - Fi and press the WPS button , the device connects to the Wi - Fi modem at home , extending wireless network coverage in the rooms before unreached.\r\n\r\n\r\nWith LED indication of the intensity of the transmission signal in the house you can find the best position to maximize the extension of Wi - Fi signal.', 'Wi-Fi b/g/n at 2.4 GHz with 300 Mbps speed', 'Association with modem ADSL in WPS modality', NULL, 'LED intensity indicator transmission signal between repeaters', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3),
(27, 'TIMTag', 'timtag.jpg', 130, 'TIMTag, the device that informs you about your friend''s position on all fours and the things you care about most. \r\nFollow in real time their movements on your smartphone without ever losing sight.\r\n\r\nWith TIMTag you have a state of the art GPS tracking device , an App dedicated intuitive and simple to use, including 12 months TIMTag and TIM Card Service!\r\nEverything at only 129€!\r\n', 'The TIMTag app is compatible with devices iOS and Android.\r\n\r\nTI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4),
(28, 'D-Link SmartHome', 'smarthome.jpg', 160, 'With the Smart Home HD Starter Kit you can set up , control, monitor and automate your home wherever you are.\r\nNel Kit there are included:\r\n\r\nOne Monitor HD (DCS-935L) \r\nOne Wi-Fi Motion Sensor (DCH-S150)\r\nOne smart plug (DSP-W215) \r\nThrough Mydlink Home App  for smartphone and tablet you have control of all the devices in order to simplify the management of the house , making it safer and smarter.', 'With Monitor HD, you can control your home in high definition', 'adsl oor D-Link Smart Home Starter Kit with a mobile connection', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4),
(29, 'Watch Sport', 'watchsport.jpg', 370, 'Each collection Apple Watch is made of special alloys , designed to combine aesthetic and robustness . The case of Apple Watch Sport is made of silver anodized aluminum, sidereal gray , gold or rose gold , while in the Apple Watch models is made of stainless steel natural color or black sidereal . The case is available in two sizes : 38 mm and 42 mm . We have also created a range of interchangeable straps in exclusive materials . Apple Watch uses revolutionary technologies such as Digital Crown , the Taptic Engine and Force Touch . And thanks to a battery that lasts up to 18 hours , you can use it all day.*\r\n\r\n \r\n\r\n\r\n', 'Cardiofrequentimeter\r\nAccelerometer\r\nGyroscope\r\nLight sensor', 'Wi-Fi (802.11b/g/n at 2,4GHz)\r\nBluetooth 4.0', NULL, 'Glass Ion-X\r\nDisplay Retina with Force Touch', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4),
(30, 'Nokia Cassa MD', 'nokiamd.png', 50, 'Speaker bluetooth Nokia MD-12 white color. NFC. \r\nListen to your favorite music is now easier chemai . With its ultra - compact design and a wide range of beautiful colors , MD -12 is quite piccoloda fit in your pocket . Experienced low . Do not let its small size deceive you . Questopiccolo loudspeaker has a big load of energy. Designed with the latest technology , MD -12 èstato designed with an integrated actuator , creating a great bass effect when set quasiqualsiasi surface. The improved battery life for a more enjoyable listening . With NFC included , bastatoccare your NFC -enabled phone to the speaker and you''re set . Or use Bluetooth and listen to streaming your tunes wirelessly and dance the night with 15 hours of music playback guaranteed.\r\n', 'Inside/outside speaker in plastic, up to 15 hours of playback', 'NFC included, Wireless front and lateral speakers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4),
(31, 'Beats Solo2 On-Ear', 'beatssolo2.jpg', 200, 'Audio enhanced with the new Beats sound quality , the sound of Solo2 headphones is sharper and cleaner and emits a wider range of emotions . The Solo2 headphones offer a large range of high frequencies and deep bass for un''esperienza balanced listening to all kinds of music.\r\n\r\nFit and style : comfort, durability and style. curved pavilions of 15 degrees for hours of comfort ; the rotational flexibility allows to flex pavilions for an even more customizable fit', 'RemoteTalk™ cable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '156 mm (width)\r\n\r\n', '205 gr.', 0, 4),
(32, 'Videocamera D-Link', 'dlinkfissa.jpg', 80, 'The fixed videocamera Cloud Wireless N of D-Link (DCS-942L) is a versatile monitoring solution for your home or small office 24 hours a day ; equipped with infrared LEDs it allows to see even in the absence of light.\r\n\r\nIt connects to the Wi - Fi network dell''utente and transmits high quality video images for monitoring home and office even in total darkness.\r\n\r\n\r\nNo subscription or subscribe to a calling plan\r\nFree service FOREVER\r\nViewing from smartphone or tablet images taken by the cameras\rInstant push notifications on the App if the camera detects an intrusion\r\nIts endowed with a 16GB MicroSD card slot and a MicroSD card included for on-board storage of records.', 'Technology Wireless N with PIR sensor', 'Technology Wireless N - Button Wireless security with Wi-Fi Pro', NULL, 'LED Infrared for night vision up to 8m', NULL, 'Slot for MicroSD (not included) for storage of registrations', NULL, NULL, NULL, 'Registration of videos and pictures in VGA (480p) definitions', NULL, NULL, 1, 4),
(33, 'Galaxy Gear S', 'galaxygear.jpg', 350, 'Watch Multifunction Intelligent\r\nDisplay 2” curved SuperAMOLED\r\nProcessor DualCore 1GHz\r\nCertification IP67', 'Watch Multifunction Intelligent which works at frequencies 2G: 9', 'HSDPA 21Mbps/UMTS/EDGE/GPRS - Wi-Fi - Bluetooth - **Micro USB', NULL, NULL, NULL, '4GB*', NULL, 'Nano', NULL, NULL, '39,9 x 58,1 x 12,5 mm', '84 gr.', 0, 4),
(34, 'Gear Fit', 'gearfit.jpg', 80, 'The innovative curved screen from 1.84  Super AMOLED touch screen and interchangeable straps Samsung Gear Fit make you cool and fashionable even when you''re training . It also offers a variety of colors , backgrounds and types of watch that you can choose according to your preferences . So you can customize your look every day!\r\n\r\nWith Samsung Gear Fit immediately receive Email , SMS notifications , incoming calls and apps so you do not lose a notification to always be in touch with your world . Whats more , make it Your Personal Trainer daily! In fact, thanks to the heart rate sensor, in training mode, this device supports you in real time and gives you tips that you need during the  physical activity to achieve your goals.', 'Accelerometer - Gyroscope - Cardiac sensor', 'Bluetooth 4.0 - Micro USB', NULL, 'Curved Touch of 1.84” (risolution 128x432) at 16M of colors', NULL, NULL, NULL, NULL, NULL, NULL, '23,4 x 57,4 x 11,95 mm', '27 grams', 0, 4),
(35, 'Bilancia - iHealth', 'bilancia.png', 120, 'iHEALTH has developed a line of innovative products , for the management of personal health on a smartphone or tablet . The iHealth Wireless products with bluetooth connection for iPad , iPhone , iPod and Android make it easy to measure , store and instantly share the results with your family or your doctor . The iHealth MyVitals powerful application allows you to manage all the data related to their own health with charts , statistics and trends . This application is unique in its kind , traces the relationship between various parameters such as blood pressure , weight , caloric intake and physical activity . Compatible with all Apple and Android platforms . It includes a free iHealth Cloud.', 'High quality digital scales\r\nCompatible with devices', 'Bluetooth V3.0 + EDR Class 2 SPP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '380 x 310 x 35 mm', '1.5 kg (se', 0, 4),
(36, 'Sony Smart Band', 'smartband.jpg', 50, 'Sensors\r\nEasy Pairing NFC, Accelerometer e Gyroscope\r\n\r\nCompatibility\r\nDevices Android 4.4\r\n\r\nServices and applications\r\nLifeblog, your multimedial personal diary\r\n\r\nConnectivity\r\nBluetooth 4.0 Low Energy\r\n\r\nDimensions bracelet\r\n250 mm\r\n\r\nDimensions module\r\n40,7 x 15,3 x 7,8 mm\r\n\r\nWeight\r\n27 gr.\r\n\r\nBattery\r\n35mAh\r\n', 'Easy Pairing NFC, Accelerometer and Gyroscope and Lifeblog', 'Bluetooth 4.0 Low Energy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bracelet: 250 mm \r\nm', '27 gr.', 1, 4),
(37, 'Philips Friends', 'philips.png', 180, 'Colour your world with light, they are bright colors of the day or the golden hues dell''autunno , the starter kit Philips Friends of hue Bloom White allows you to create the lighting you want via smartphones or other devices.\r\n', NULL, 'wireless, Connection ZigBee Light', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21,8x 22,8x 21,9 cm', '0,840 Kg', 0, 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `productscategories`
--

CREATE TABLE `productscategories` (
  `idCategory` int(11) NOT NULL,
  `nameCategory` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `productscategories`
--

INSERT INTO `productscategories` (`idCategory`, `nameCategory`) VALUES
(1, 'Smartphones & MobilePhones'),
(2, 'Tablets & Computers'),
(3, 'Modem and Networking'),
(4, 'Tv and Smart Living'),
(5, 'Promotions');

-- --------------------------------------------------------

--
-- Struttura della tabella `productsmartlife`
--

CREATE TABLE `productsmartlife` (
  `idProduct` int(11) NOT NULL,
  `idSmartlife` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `productsmartlife`
--

INSERT INTO `productsmartlife` (`idProduct`, `idSmartlife`) VALUES
(11, 0),
(1, 1),
(3, 1),
(7, 1),
(17, 1),
(18, 1),
(21, 1),
(37, 1),
(1, 2),
(2, 2),
(7, 2),
(15, 2),
(16, 2),
(17, 2),
(24, 2),
(25, 2),
(28, 2),
(30, 2),
(37, 2),
(2, 3),
(8, 3),
(9, 3),
(11, 3),
(13, 3),
(19, 3),
(20, 3),
(22, 3),
(30, 3),
(32, 3),
(35, 3),
(36, 3),
(3, 4),
(21, 4),
(26, 4),
(27, 4),
(29, 4),
(9, 5),
(11, 5),
(14, 5),
(22, 5),
(23, 5),
(29, 5),
(33, 5),
(1, 6),
(2, 6),
(3, 6),
(7, 6),
(13, 6),
(15, 6),
(16, 6),
(17, 6),
(18, 6),
(19, 6),
(23, 6),
(29, 6),
(30, 6),
(32, 6),
(33, 6),
(36, 6),
(4, 7),
(19, 7),
(20, 7),
(26, 7),
(34, 7),
(35, 7),
(4, 8),
(6, 8),
(10, 8),
(15, 8),
(16, 8),
(18, 8),
(20, 8),
(21, 8),
(25, 8),
(31, 8),
(3, 9),
(5, 9),
(13, 9),
(14, 9),
(16, 9),
(17, 9),
(18, 9),
(19, 9),
(20, 9),
(5, 10),
(8, 10),
(31, 10),
(6, 11),
(10, 11),
(16, 11),
(27, 11),
(28, 11),
(33, 11),
(34, 11),
(6, 12),
(10, 12),
(14, 12),
(24, 12),
(1, 13),
(2, 13),
(3, 13),
(4, 13),
(5, 13),
(6, 13),
(7, 13),
(9, 13),
(10, 13),
(12, 13),
(13, 13),
(14, 13),
(15, 13),
(16, 13),
(17, 13),
(19, 13),
(20, 13),
(1, 14),
(12, 14),
(13, 14),
(15, 14),
(19, 14),
(21, 14),
(4, 15),
(8, 15),
(12, 15),
(13, 15),
(16, 15),
(17, 15),
(19, 15),
(2, 16),
(3, 16),
(20, 16),
(22, 16),
(23, 16),
(26, 16),
(27, 16),
(28, 16),
(31, 16),
(32, 16),
(34, 16),
(35, 16),
(7, 17),
(9, 17),
(10, 17),
(12, 17),
(14, 17),
(29, 26);

-- --------------------------------------------------------

--
-- Struttura della tabella `smartlife`
--

CREATE TABLE `smartlife` (
  `idSmartlife` int(11) NOT NULL,
  `nameSmartlife` varchar(30) COLLATE utf8_bin NOT NULL,
  `descriptionSmartlife` mediumtext COLLATE utf8_bin NOT NULL,
  `photoSmartlife` varchar(30) COLLATE utf8_bin NOT NULL,
  `descriptionLongSmartlife` longtext COLLATE utf8_bin NOT NULL,
  `activationSmartlife` longtext COLLATE utf8_bin NOT NULL,
  `questionsSmartlife` longtext COLLATE utf8_bin NOT NULL,
  `answersSmartlife` longtext COLLATE utf8_bin NOT NULL,
  `promotionsSmartlife` tinyint(1) NOT NULL DEFAULT '0',
  `idCategory` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `smartlife`
--

INSERT INTO `smartlife` (`idSmartlife`, `nameSmartlife`, `descriptionSmartlife`, `photoSmartlife`, `descriptionLongSmartlife`, `activationSmartlife`, `questionsSmartlife`, `answersSmartlife`, `promotionsSmartlife`, `idCategory`) VALUES
(1, 'TIMVision', 'Cartoons, cinema, TV series, documentaries and concerts always on demand to create your own schedule without advertising . More than 8,000 titles on a subscription , with no time constraints , even in HD\r\n', 'tim-vision.png', 'No times to be respected and no spots that disturb the movie : this sums it TIMvision, TV on demand of the Telecom Italian Group.\r\nBut how the service works?\r\nHow much it costs and how to activate it?\r\nWhat devices are supported? Lets find together!\r\n\r\nTIM Vision its a TV on demand, so a television (with the most varied programs, from entertainment to scientific programs, from movies to television series) that lets you watch the programs you want when you want, without commercial interruptions. That is, in a nutshell you will not have fixed times but you scegliee you day and time.\r\n\r\nUnlike traditional pay TV, you can watch TIM Vision must be able to use an internet connection (so no antennas and parables) and an enabled device (see below).', 'To enjoy the TIM Vision service, you must subscribe : you can do it directly from the site, going in the Offer section, or if you have a Smart TV compatible from TIMvision widget, in the section TIM Vision TV.\r\nFor payment, you can choose to charge your account Telecom Italy (if you are a residential customer with ADSL / FIBER Telecom Italy), credit card Visa, Mastercard or American Express.\r\nTo perfect the purchase process (both subscription and the individual title on Videostore) you must set a PIN.\r\nThe contract you have entered into with TIM means indefinitely (thus , will also apply after the end of any promotional period ).\r\nFor cancellation, you must send a written letter (with a copy of your identity card) at this account in Telecom Italy , or fax (to know the number, contact 187) .\r\nOnly for Telecom customers, you can call the 119.', 'Q: How much costs Tim Vision? :Q Q: With what devices can i see the contents? :Q', 'A: We must distinguish between customers of TIM - Telecom Italy and customers of other operators group:\n\nTIM or Telecom Italia customers: subscription Timvision TV is promoting a 5 € per month, plus the Telecom Italian customers will have the free decoder;\n\nCustomers of other fixed-line operators : if you activate online the cost will be free for the first month and € 5 for the following months;\n\nCustomers of other mobile network operators : Service Unavailable. :A A: Timvision can be seen on many devices and more precisely:\n\nWith Smartphone e Tablet through Timvision App, non-customers TIM can use this option only with connection to a wi-fi network;\n\nWeb by connecting to the official website www.timvision.it\n\nBy TIM Vision decoder to be connected to the fixed network and the TV;\n\nWith a smart new generation TV, enabled the vision of TimVision;\n\nWith Google Chromecast , a device that allows you to turn a TV into smart TV controlled by mobile phone or PC (see the guide).\n\nThe TIMVision decoder , on loan to use , allows you to see beyond the TIMvision programming , even that of Netflix and premium online course if you subscribe to these services. :A', 0, 1),
(2, 'TIMSky', 'Only our fiber and the faster they will bring ADSL SKY, no parable . TIM SKY, the first offer that gives you calls, unlimited internet and brings you home the spectacle of SKY, without a parable\n', 'tim-sky.png', 'For you the big show and innovation of Sky from only 14 € / month more for the first 18 months.\nSe aderisci a TIM Sky entro il 3 luglio 2016 puoi avere:\n\n My Sky per vedere la TV come e quando vuoi e Sky On Demand, una videoteca con migliaia di titoli sempre a tua disposizione.\n\n Sky TV con 38 canali di intrattenimento esclusivo a soli 14 €/mese per i primi 18 mesi, oppure Sky TV + un pacchetto a scelta tra Sky Cinema, Sky Sport o Sky Calcio a 26,90 €/mese per i primi 18 mesi. Puoi aggiungere all''offerta anche Sky Famiglia + Sky HD a 5€/mese per i primi 18 mesi anzichè 11€.\n\n Sky Box Sets è la novità di Sky che ti offre le migliori serie TV, stagione dopo stagione, tutte su My Sky.\n\nIn più puoi avere Sky Link per collegare My Sky in Wi-Fi a 30 €.\n\nSe sei cliente ADSL, avrai inclusi nell’offerta:\n\nSuperinternet Plus, per navigare fino a 20 Mega\nSMART MODEM', 'All prices include VAT\n\nBefore you accept the offer , verify the coverage in the area of your interest or for more information , go to a TIM Store, call 187 or visit this site .\n\nThe activation of the offer " TIM Sky " presupposes the signing of two separate contracts , one with TIM and one with Sky Italy , each governed by their respective General Terms and Conditions .\n\nYou can request the activation :\n\n \n> At a TIM store\n \n> Calling 187', 'Q: Who is the promotion TIM Sky?:Q Q: I am already a customer of TIM Fiber / ADSL, I can accept the offer TIM Sky?:Q \n', 'A: The promotion is open to all who want to take out a Sky subscription, and choose the TIM Fiber or ADSL to enjoy the service.:A A: Yes, you can accept the offer TIM Sky. In particular, if you are already a customer ADSL TIM, to ensure an excellent experienceof Sky content viewing you depending on Superinternet Plus coverage up to 20Mb or Superinternet up to 10Mb and SMART MODEM included in the offer.:A', 1, 1),
(3, 'Netflix', 'TV series and movies from € 7.99 / month , where you want and when you want, even the decoder TIMvision', 'netflix.png', 'Discover new stories .\r\n\r\noriginal series , comedies , dramas and children''s programs , you can watch your favorite TV series and movies instantly streamed to any device you choose . The offer TV we expected some time for the wide variety of content , to see when and where you want with quality of Network TIM and without constraints , available directly on the home TV through the decoder TIMvision with HD quality.', 'With TIMvision\r\nenjoy the show\r\nNetflix also\r\non home TV\r\n\r\nBy TIM access Netflix world in an easy and immediate with TIMvision decoder . For TIM customers need no credit card to Netflix . You pay the invoice conveniently TIM and keep costs under control . You can watch Netflix at any time , without commercial interruptions . An easy and fast with three packages to choose from subscription .\r\n\r\nTest your month FREE .', 'Q: Why subscribe to Netflix? :Q Q: How much it cost to subscribe to Netflix? :Q', 'A: You have the ability to stream thousands of TV shows and movies, whenever you want and wherever you want, on your TV through your TIMvision decoder, Smart TV, PS3, PS4, Wii, Xbox, PC, Mac, smartphone, tablet.\n\nBy subscribing to the service from NETFLIX TIMvision decoder connected to your home ADSL / fiber you have the option to charge the cost of Netflix directly to your landline bill TIM. With Netflix, there are no commercials, you can pause, rewind and continue watching whenever you want, without any limits. There are no commitments, you can terminate your subscription to Netflix at any momento.:A A: You can choose from three different membership types that differ in the number of devices to simultaneously access and the quality of the video. The first month is always free. If you are client TIM subscribing to the service from NETFLIX TIMvision decoder connected to the line ADSL / fiber to the home, you will have the opportunity to charge the cost of the subscription on your fixed line bill TIM.:A', 1, 1),
(4, 'TIM Premium', 'Football , Movies, TV and Infinity Series for TIM customers to 19 € / month throughout 2016 to see when and where you want', 'tim-premium.png', 'All Premium\r\n\r\n18 channel in live streaming and a catalog with more than 8000 on-demand titles, including the contents of Infinity, in HD, dual audio and subtitles. Hundreds of films and TV series premiere and exclusive. All the UEFA Champions League (2015-2018) exclusively, the Serie A teams of the premium, the foreign championships, the FIA World Rally Championship 2016, the best of Mediaset entertainment and much more!', 'You can activate the service by an operator or at a store.\r\nFor this month only € 19.90\r\n\r\nOr separate packages only € 9.90, among our proposals:\r\n\r\n-Package CINEMA + FOOTBALL: with Cinema Package you have more than 2,500 films every year, from large previews to the masterpieces of all time, the first TV exclusively, the richest catalog of Infinity and 5 channels streamed live, to enjoy great cinema where and whenever you want. Also, included in the package 2 games of your choice of Serie A TIM teams of premium per month.\r\n\r\n-Package FILM + TV SERIES: 9 channels in live streaming, more than 2,500 movies and 2,000 episodes of TV series, with all the first TV in the exclusive Premium, the great Italian and international cinema, the "boxes", to enjoy the seasons full of the best TV series and the rich catalog of Infinity. All in HD, the original language with subtitles. In addition many incidents of Cartoons, the most beautiful and the best of Fiction Mediaset entertainment.', 'Q: What is TIM Premium Online? :Q Q: How can I subscribe to TIM Premium Online? :Q Q: When can request activation of TIM Premium Online?:Q', 'A: TIM Premium Online is dedicated to customers who join the TIM offer premium online service, the subscription service with which you can view 18 channels in live streaming and a catalog with more than 8000 * on-demand titles, including the content of Infinity, even in HD, dual audio and subtitles.\n\nAllows the use of two separate services (the broadband connectivity of fixed network service "TIM", ADSL or fiber, and the service "Online Premium") provided, respectively, by Telecom Italy S.p.A. and Mediaset Premium S.p.A. under the respective General Terms and Conditions and following signature by the parties concerned, two separate agreements (the "TIM" contract and the "Premium Online" contract).\n\n* The contents vary by sottoscritto. :A A: To subscribe to the offer dedicated to customers of TIM Premium Online contact Customer Service TIM 187 or go at a TIM store. You can choose between two packages: All Premium and Cinema. :A A: If you are a customer fiber can always request the activation of TIM Premium Online, if you are a customer ADSL offer may be requested after a technical check on the speed of your line.\nIf you are a customer ADSL and have not already activated the new offer TIM SMART HOME / MOBILE, by cleaving to TIM Premium Online your line will be updated to the best possible speed by activating the FREE Superinternet option of up to 10 Mbps or up Superinternet Plus to 20Mbps, depending on technical availability of ADSL servizio.Se you are a customer and you''ve already activated the new offer TIM SMART HOME / MOBILE, you should verify that the line has a rated speed of at least 10 Mbps. If it is not, it will not be You can activate TIM Premium Online.:A', 1, 1),
(5, 'Chromecast', 'With Chromecast , the device that connects smartphones and tablets to TV, you TIMvision included for three months', 'chromecast.png', 'Pack TIMvision to 39 €\r\nWith Chromecast, the device which\r\nconnect smartphones and tablets to TV,\r\nyou have TIMvision included for three months.\r\nAfter the first 3 months , the service continues at a cost of € 5 per month.\r\n\r\nWith TIMvision can create your own schedule without commercial breaks with more than 8,000 titles available.\r\nA single monthly subscription and the program starts whenever you want on your home TV.', 'To activate the offer:\r\n\r\nYou can buy directly online or at the Shops TIM Pack TIMvision & Chromecasts including Chromecasts and Promotion 3 months TIMvision subscription.\r\n\r\nHow to Install the Chromecast:\r\n\r\nConnect the power supply Chromecasts key supplied and to an HDMI input on the TV\r\nDownload the Chromecast App on your smartphone or tablet for setup\r\nTIMvision access and register the App with your username and password\r\nactivate the Wi-Fi on your smartphone or tablet\r\nclick on the icon and select the Chromecast App TIMvision.', 'Q: What is Chromecast?:Q Q: How can i see TIMvision with Chromecast?:Q', 'A: It '' a device that lets you watch TIMvision , your videos , photos and more on your TV even if it is not a Smart TV or do not have the TIMvision decoder , using your tablet / smartphone. :A A: After the installation, download on your smartphone / tablet App TIMvision , recorded on TIM mobile network and log in with the username and password. To see the TIMvision content on TV, click the icon in the App Chromecasts TIMvision at the top right and choose the content you want to see . In this way, the playback will be directly on your TV.:A', 0, 1),
(6, 'TIMmusic', 'Step into a world of music with the app TIMmusic. Millions of songs streaming, all the latest releases and many playlists to listen anywhere, anytime, without consuming GB!', 'tim-music.jpg', 'THE SOUNDTRACK OF YOUR LIFE\r\n\r\nStep into a world of music with the app TIMmusic. Millions of songs streaming, all the latest releases and many playlists to listen anywhere, anytime, without consuming GB!', 'Activate TIM music is easy as you can do it directly online, then just download the app and enjoy your music.', 'Q: Tim Music is compatible with every device?:Q', 'A: Yes, no need to worry. Tim music covers a wide range of device if not entirely:A', 0, 1),
(7, 'TIMReading', 'Always carry on Smartphone and Tablet your favorite eBook, follow all your passions choosing among the most beloved magazine and look in your newspaper from the early hours of the morning . On TIMreading you find what you love to read , anywhere, anytime\r\n', 'tim-reading.jpg', 'Always carry on Smartphone and Tablet your favorite eBook, follow all your passions choosing among the most beloved magazine and look in your newspaper from the early hours of the morning. On TIMreading you find what you love to read, anywhere, anytime.\r\n\r\nTim Reading newspapers of any kind, magazines and a wide variety of ebook, so you will never miss something to read.\r\n', 'On TIMreading can buy eBooks , newspapers and magazines in this way:\r\n\r\n-all content (books , newspapers and Magazine) can be purchased from PC and Tablet www.timreading.it accessing the site and browsing in the catalog\r\n-the books can also be purchased by Smartphone through m.timreading.it mobile version. In this case, to complete the purchase, the payment instrument on your profile you must have previously configured\r\n-the eBook and Magazine can also be purchased via the App TIMreading for Smartphone and Tablet Android, in the section SHOP (App for Smartphone allows the purchase of only eBook). In this case, to complete the purchase, the payment instrument on your profile you must have previously configured.', 'Q: Can i purchase more than one subscription to a newspaper?:Q Q: I bought a weekly ticket, i can go monthly subscription? :Q', 'A: Yes , you can purchase more than one subscription if you choose different newspapers , while in the same newspaper you can activate the weekly pass or alternatively what mensile.:A A: Yes , you can, but you must first disable the weekly ticket and then activate the monthly subscription . Same thing if you want to switch from a monthly to a weekly for the same testata.:A', 0, 1),
(8, 'TIMGames', 'Shooter, extreme sports, the best Classics and much more ... With TIMgames all you have hundreds of games for tuosmartphone and tablets, to have fun anywhere, anytime', 'tim-games.jpg', 'Shooter , extreme sports , the best Classics and much more ... With TIMgames all you have hundreds of games for tuosmartphone and tablets, to have fun anywhere, anytime\r\n\r\nCONTENTS\r\n\r\nArcade\r\n \r\nSport\r\n \r\nEngines\r\n \r\nCards\r\n', 'With I Love Games Promo you can download all the games you want from the app TIMgames, or by accessing the website www.timgames.it\r\n\r\nFor the first month subscription service will be at half price, the cost of 1 € per week, then switches automatically to 2 € per week.\r\nIn addition, data traffic to download games is included in your subscription!\r\n\r\n\r\nActive right away I Love Games Promo\r\n\r\n> Onlinecliccando directly on the ACTIVE button\r\n\r\n> Calling the freephone number 40916 (for rechargeable customers) and follow the voice guidance\r\n\r\n> Sending a free SMS to the number 40916 with the text ILOVEGAMESPROMO ON\r\n\r\n> Free of charge by calling Customer Service 119\r\nShops at TIM', 'Q: Which customers can activate I LOVE GAMES PROMO?:Q Q: Where can i download games of I Love Games Promo?:Q ', 'A: All customers with an active offer TIM TIM Mobile with data included. To use the service you must have a compatible phone. Excludes Apple devices and Windows Phone:A A: To download the games included in the offer, you can go with your smartphone on TIMgames.it mobile version of the section dedicated to I Love Games Promo:A', 1, 1),
(9, 'Serie A Tim', 'Live the best of the Serie A TIM and the best moments of the 2015/2016 Championship with all the news, videos -goal, the summaries on your Smartphone or Tablet and without consuming GB. The only official app of the Serie A TIM. Download the app and experience the magic of football!\r\n', 'tim-seriea.jpg', 'Live the best of the Serie A TIM and the best moments of the 2015/2016 Championship with all the news, videos-goal, the summaries on your Smartphone or Tablet and without consuming GB. The only official app of the Serie A TIM. Download the app and experience the magic of football!\r\n\r\nIN APP Serie A TIM you find the latest news about the world of football, even when you''re on the go, with news on the Italian Championship, but also on all other competitions. In addition, you can participate in social life due to direct access to the Fan Page on Facebook Serie A TIM and Serie A TIM on Twitter.\r\n\r\nDownload the App Serie A TIM and you''ll have the best of football on your smartphone or tablet.\r\nAnd if you''re not the customer TIM GB consumption! Before you subscribe you can try free exclusive content and stay updated with news and statistics available to all.\r\n\r\nYou can take advantage of the Annual Pack and you''ll have the chance to follow the whole end of the 2015-16 championship, the transfer market and news from the withdrawals, and all of the Serie A TIM 2016-17 until 06.30.2017 only 9, € 99.\r\n\r\nThe cost to activate PACK ANNUAL SERIE A TIM is € 9.99; and includes all premium content App Serie A TIM until 06.30.2017 where all the days of Championship are included.\r\n\r\nYou can choose the Monthly subscription € 2.49 and for 30 days you can enjoy all the exclusive content of the App, not getting lost a beat in Serie A.', 'You can activate the offer :\r\n\r\nat TIM Shops\r\nActivation of entertainment services\r\n\r\nTo enable the 3 months of TIMvision, TIMmusic, TIMgames, Serie A TIM, TIMreading with Elle magazine included in your TIM Special, you will need to access from your smartphone with 3G or 4G, the vai.tim.it page \\ play and choose including movies, music, magazines, games and football .', 'Q: What is Season Pack Serie A TIM?:Q Q: What is included in your subscription Serie A TIM?:Q ', 'A: The Season Pack Serie A just € 9.99 allows you to access all the exclusive content APP Serie A TIM until 06/30/2017 , and then follow the entire Championship 2016-17 :A A: Subscriber If you do not lose even a minute of the game , thanks to real-time chronicle of all the video games of the Championship and the availability of all the goals and highlights a few minutes after the accident. Also, take full advantage of the highlights of the races at any time and all the exclusive video content , such as Goal Collection and " Top " played for each giornata.:A\n', 0, 1),
(10, 'TIMTag', 'TIMTag, is the device that tells you about your friend''s position on all fours and the things you care about most.\r\nReal-time follow his movements on your smartphone without ever losing sight.', 'tim-tag.png', 'TIMTag is the device that tells you about your friend ''s position on all fours and the things you care about most.\r\nReal-time follow his movements on your smartphone without ever losing sight.\r\n\r\nWith TIMTag you have a state of the art GPS tracking device, with 12 months TIMTag and TIM Card service included and an App dedicated, intuitive and easy to use!', 'THREE EASY STEPS AND YOU CAN TRACK EVERYTHING YOU LOVE\r\n\r\n1-Buy the Pack TIMTag\r\n\r\nBuy now online and receive direct to your door the pack or go to one of TIM stores .\r\n\r\n2-Enable TIM Card\r\n\r\nRecord TIM Card, which you can find in the pack on a TIM store (the TIMTag offer will be activated automatically after registration).\r\n\r\n3-TIMTag Download the APP on your Smartphone\r\n\r\nInstall the app on your smartphone and associates the tracking device (Android and iOS).', 'Q: What are the charachteristics of TIMTag?:Q Q: Who can choose TIMTag?:Q ', 'A: It is an offer that TIM offers a GPS Tracker with included 12 months TIMTag service. The TIMTag option promo, includes traffic data that is SMSs from the GPS Tracker to the service platform (max 50MB and 100SMS every 30 days) and use the App TIMTag. The Bundle data and SMS provided is calibrated to meet the needs of continuous use of the device .\nThe cost of GPS Tracker, TIM Card and the service for the first 12 months is only 129 €! The package contains:\n\nGPS tracker\n12 months " pre-activated " service included on TIMcard\n1 TIM Card :A A: The offer is valid for rechargeable customers, residents in Italian territory and that they are entitled for purposes unrelated to their entrepreneurial activities or any professionale.:A', 0, 3),
(11, 'TIM Home Connect', 'The ideal solution to manage all home automation systems in your home, from simple domestic boiler, to the home protection systems, with the most advanced monitoring systems.', 'tim-home.png', 'TIM Home Connect the offer is meant to be used in home automation devices in the home, the management of which involves the use of a SIM\r\n\r\nConnect with Tim Home for you have available minutes, SMS and MB to be used to connect and manage your burglar alarm, your boiler or other home automation systems.\r\n\r\nThe offer includes every 30 days:\r\n\r\n20-minute calls\r\n100 MB of Internet traffic\r\n100 SMS to all\r\n \r\nChoose the ideal solution for you\r\n\r\nTIM Home Connect 24\r\n24 months without worries! Starting from the 25th month, the offer will continue to be accessible at a cost of € 3 per month.\r\n\r\n€ 36\r\n\r\n \r\n\r\n \r\n\r\nTIM Home Connect 12\r\n12 months without thoughts ! Starting from the 13th month the offer will continue to be accessible at a cost of € 3 per month.\r\n\r\n€ 24\r\n\r\n \r\n\r\n \r\n\r\nTIM Home Connect Light\r\nThe offer that is renewed every month!\r\n\r\n€ 3 /month\r\n\r\n€ 5 Activation', '> If you are already in possession of a TIM Card directly online by clicking the ON button\r\n\r\n> At the Shops TIM\r\n\r\n\r\nN.B: All prices include VAT.\r\nThe offer is valid for rechargeable customers.\r\nThe ability to use the mobile services included in the offer depends on the technical characteristics of the home automation device which is associated with the TIM Car .', '', '', 0, 3),
(12, 'D-Link SmartHome', 'D-Link Smarthome Starter Kit offers you a chance to set up, control, monitor and automate your home wherever you are.', 'smart-home.jpg', 'With the Smart Home HD Starter Kit will be able to set up, control, monitor and automate your home wherever you are.\r\nThe kit includes:\r\n\r\nAn HD Monitor (DCS - 935L)\r\nA Wi - Fi Motion Sensor (DCH - S150)\r\nA smart plug (DSP - W215)\r\nVia the mydlink Home app for smartphones and tablets all you have control of all the devices in order to simplify the management of the house, making it safer and smarter.\r\n\r\nEasy configuration and management of your devices\r\n\r\nSimply download the app mydlink Home and the configuration wizard will help you make the best use all of the devices in easily and intuitively kit.\r\nWith the app you have to create the rules for on and off your appliances when and wherever you want.', 'Buy now our product and begin immediately.\r\n\r\nConfiguration is easy!\r\n\r\nSimply download the app mydlink Home and the configuration wizard will help you to operate all devices in the kit ', 'Q: Where can i buy this product?:Q ', 'A: In any store near you or online :A', 0, 3),
(13, 'Well App', 'A free app developed like a personal diary, to arrange at all times of all the information on medical preventive controls and periodically for themselves and for the whole family.', 'wellapp.png', 'Well app is completely free app that keeps track of your fitness workouts and records them directly to your smartphone.\r\n\r\nThis application can be used to synchronize many fitness products in the store.', 'To activate the service just download the app from your app store and online in a click it will all be easy and quick.', 'Q: How to synchronize your smartphone with a fitness bracelet?:Q', 'A: Very simple, go to the options menu and select your app syncs dispositivo. At this point activate the wifi of device and synchronization occurred. :A', 0, 2),
(14, 'Payments', 'By TIM Wallet you can use your smartphone to pay for all authorized shops.', 'pagamenti.png', 'TIM is WALLET:\r\n\r\n-SURE\r\n\r\nThe details of your credit card or debit card are stored confidentially and protected on TIMcard\r\n\r\nSimple and FAST\r\n\r\nJust a touch to select the card with which to make your purchases\r\n\r\n-COMFORTABLE\r\n\r\nLeave your wallet at home and use the smartphone to have on hand your cards.\r\n\r\n\r\nThe cards associated with the service are:\r\n\r\nINTESA SANPAOLO\r\nMEDIOLANUM\r\nBNL\r\nBANK HELLO!\r\nWHAT DO YOU NEED', 'To activate the service:\r\n\r\n1-Pick up TIMcard NFC:\r\n\r\nFor full use of all the services offered by TIM Wallet we suggest using a TIM Card NFC. Request the paper change in a TIM Store, or become a customer by buying a new TIM! Remember, the payments service is only available for TIM Card NFC.\r\n\r\n2-SMARTPHONE NFC\r\n\r\nDiscover all smartphones that are enabled for payment services. Check the list of compatible terminals, certified to ensure the safety requirements of banks and payment networks.\r\n\r\n3-TIM Wallet Active\r\n\r\nRemember to download the app TIM Wallet and activate it by going at least once a service.', 'Q: What are smartphones compatible with NFC services?:Q Q: What does NFC means?:Q', 'A: TIM Wallet is compatible with all SIM BASED NFC smartphones, terminals that can read the information stored on the SIM with the security required by banks and payment networks. The list of NFC smartphones, tested and released, is constantly changing. Enabling other phones require appropriate security checks not only by TIM but also from our partners. See the updated list of professional terminals. :A A: NFC (Near Field Communication) is a technology that provides short-range wireless connectivity. The NFC allows the "interview" safely between your phone and a POS enabled during a contactless payment transaction or those transactions that occur simply approaching the payment instrument (a card or, as in our case, a phone) to the POS, without the need for insertion inside the player. NFC technology provides encrypted transactions according to the security requirements of banks and payment networks. The details of your credit card details are securely stored on your SIM. This particular method of payment is usually defined Mobile Proximity Payment. :A', 0, 4),
(15, 'Fidelity Card', 'Save the TIM Wallet your loyalty cards to have them always with you.', 'fidelitycard.png', 'By TIM Wallet you can virtualize your loyalty cards and always carry them with you.\r\nLogin to Showcase Services and in a few steps you can capture all your loyalty cards.\r\nFrames the paper in the box and wait to be recognized.\r\nThe card recognition is automatic, but if the card is not recognized between these cards you can still add it by using the camera of your smartphone: select the type of the code on the card (bar code, QRCode or numeric code) and frame it. If the code is not automatically recognized, it can be entered manually.\r\nIn short you can see the card in your wallet.\r\nYou can show it in the stores enabled right from your smartphone: if you click on the image automatically rotates the card and shows the bar code (note: not all stores have the barcode reader enabled!)', '3 simple steps :\r\n\r\n-FRAME THE CARD\r\n\r\nUse the camera to add a card\r\n\r\n-AUTOMATIC RECOGNITION\r\n\r\nThe card is recognized automatically and you can find in your TIM Wallet\r\n\r\n-USE CARDS\r\n\r\nOpen the wallet and shows loyalty cards in stores', 'Q: How can I add a loyalty card?:Q Q: Which card code should I enter?:Q', 'A: Login to Showcase Services and frames the paper in the box. The card recognition is automatic in most cases. If the card is not recognized among those present you can add it using the camera of your smartphone.\nFollow the instructions that come proposals and select the type of code on the card. Picture of the code for automatic recognition. The code can also be inserted by hand. :A A: Login to Showcase Services and frames the paper in the box . The card recognition is automatic in most cases. If the card is not recognized among those present you can add it using the camera of your smartphone.\nFollow the instructions that come proposals and select the type of code on the card. Picture of the code for automatic recognition. The code can also be inserted in mano. :A', 0, 4),
(16, 'Coupon', 'Save on a wide range of products and services selected from HERE!', 'coupon.png', 'COUPON RECOMMENDED BY TIM\r\n\r\nSave on a wide range of products and services selected from HERE!', 'Find the link to the service "The recommended coupons from TIM" from TIM Wallet side menu. On this help page by selecting the "DISCOVER" button access to the site where you can choose from many special offers.\r\n\r\nYou can search for products from the best brands, dream trips and discounts exclusive places of your city by browsing the categories of offers.\r\n\r\nBy using the GPS of your smartphone you can always find the best offers around you.\r\n\r\nThe service is offered to customers by TIM HERE! Group through its sales network. Payment is made using the credit card system HERE! In case of need it is necessary to contact the service center of clients HERE! at the number 010/5389945 (option 3 ) .', 'Q: How to activate the service Coupon?:Q Q: I only find offers of my city?:Q Q: I have to register to the service Coupon?:Q', 'A: In the TIM Wallet side menu you can find the link to the service "The recommended Coupon TIM". On this help page by selecting the "DISCOVER" key takes you to the website where you can choose from many special offers. :A A: If you set the GPS on your smartphone, automatically we''ll show you the best offers around you, in your city.\nYou can search on other cities and categories of interest and navigate between offerte.:A A: To navigate through the deals you do not need to register to make purchases instead is required. The registration service is run by HERE ! Group , which provides service to customers TIM.:A', 0, 4),
(17, 'Transports', 'Buy transport tickets of your city, through the SMS ticketing service. Check now if the service is already available in your city!', 'trasporti.png', 'Buy an SMS ticket and pay it directly with your phone credit :\r\n\r\n-CHOOSE THE CITY\r\n\r\nShowcase enters the service and find out if the service is already active in your city\r\n\r\n-BUY THE TICKET\r\n\r\nSelect the type of ticket and buy it directly with your phone credit\r\n\r\n-SHOW THE TICKET\r\n\r\nAre now the ticket is valid in the transport section of your TIM Wallet', 'Open TIM Wallet and get access to Showcase Services.\r\nIf the city you''re interested in is enabled, click and buy the ticket.\r\nPay with your phone bill (if you are a customer Rechargeable) or by charge on the bill (if you are a customer with a subscription).\r\n\r\nWarning : you will be charged the cost of the ticket plus the cost of the SMS request (€ 19.90 cents including VAT).\r\n\r\nReceive a text message, the ticket is valid from that moment without the need for additional validation.\r\nYou can find the e-ticket directly to the TIM Wallet in your wallet , you can renew it when it expires. In the case of controls, displays the confirmation SMS you received.\r\n\r\nIn Milan you can also use the QRCode mode . After purchasing your metro ticket and received the SMS, also receive QRCode that allows you to open the turnstiles subway. It ''just view the QRCode and pull over your smartphone display the appropriate player.', 'Q: What''s on transport services showcase?:Q Q: What does it cost to buy a ticket?:Q ', 'A: In the transport services showcase you can buy a bus ticket and subway in many Italian cities and pay with your credit telefonico. :A A: Using TIM Wallet involves Internet traffic consumption, for which applies your plan. They will also be charged the cost of the SMS of the ticket request (€ 19.90 cents including VAT). The total cost will be deducted from your phone bill (if you are a customer Rechargeable) or by charge on the bill (if you are a customer with a subscription).:A', 0, 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `smartlifecategories`
--

CREATE TABLE `smartlifecategories` (
  `idCategory` int(11) NOT NULL,
  `nameCategory` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dump dei dati per la tabella `smartlifecategories`
--

INSERT INTO `smartlifecategories` (`idCategory`, `nameCategory`) VALUES
(1, 'TV & Entertainment'),
(2, 'Health and well-being'),
(3, 'Home and family'),
(4, 'Services for people'),
(5, 'Promotions');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `assistance`
--
ALTER TABLE `assistance`
  ADD PRIMARY KEY (`idAssistance`);

--
-- Indici per le tabelle `categoriesassistance`
--
ALTER TABLE `categoriesassistance`
  ADD PRIMARY KEY (`idCategory`);

--
-- Indici per le tabelle `productassistance`
--
ALTER TABLE `productassistance`
  ADD PRIMARY KEY (`idProduct`,`idAssistance`);

--
-- Indici per le tabelle `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`idProduct`);

--
-- Indici per le tabelle `productscategories`
--
ALTER TABLE `productscategories`
  ADD PRIMARY KEY (`idCategory`);

--
-- Indici per le tabelle `productsmartlife`
--
ALTER TABLE `productsmartlife`
  ADD PRIMARY KEY (`idSmartlife`,`idProduct`);

--
-- Indici per le tabelle `smartlife`
--
ALTER TABLE `smartlife`
  ADD PRIMARY KEY (`idSmartlife`);

--
-- Indici per le tabelle `smartlifecategories`
--
ALTER TABLE `smartlifecategories`
  ADD PRIMARY KEY (`idCategory`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `assistance`
--
ALTER TABLE `assistance`
  MODIFY `idAssistance` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT per la tabella `categoriesassistance`
--
ALTER TABLE `categoriesassistance`
  MODIFY `idCategory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
