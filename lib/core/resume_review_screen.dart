import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:flutter/services.dart';

class CandidateReviewScreen extends StatefulWidget {
  @override
  _CandidateReviewScreenState createState() => _CandidateReviewScreenState();
}

class _CandidateReviewScreenState extends State<CandidateReviewScreen> {
  int currentIndex = 0;
  String searchQuery = '';

  final List<Map<String, dynamic>> reviewCandidates = [
    {
      "Timestamp": "6/25/2025 10:41:49",
      "Full Name": "Swetha",
      "Phone number": 9000180178,
      "Education or Background": "Mcom",
      "Email": "tswtha789a@gmail.com",
      "Address": "kadapa",
      "How did you hear about this opportunity?": "Paper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "English",
      "Interested Role": "Editor",
      "Any past experience? Describe or share links": "2 years",
      "Why are you interested in historical content?":
          "i like historical content",
    },
    {
      "Timestamp": "6/25/2025 10:41:56",
      "Full Name": "Leela mohan rao challa",
      "Phone number": 9381848258,
      "Education or Background": "PGDM(Deplomo Management)",
      "Email": "leelamohan2282000@gmail.com",
      "Address": "Gurudwara,Visakhapatnam",
      "How did you hear about this opportunity?": "Ociance recupment",
      "Laptop available?": "yes",
      "Languages you can speak/write": "Telugu,English",
      "Interested Role": "",
      "Any past experience? Describe or share links": "0 experiance",
      "Why are you interested in historical content?": "Iam interested",
    },
    {
      "Timestamp": "6/25/2025 10:41:58",
      "Full Name": "shashanka",
      "Phone number": 8019933590,
      "Education or Background": "B.tec(EEE)",
      "Email": "Shashipathi449@gmail.com",
      "Address": "kondur,kadapa(AP)",
      "How did you hear about this opportunity?": "Susmitha",
      "Laptop available?": "yes",
      "Languages you can speak/write": "telugu,English",
      "Interested Role": "",
      "Any past experience? Describe or share links": "0 experiance",
      "Why are you interested in historical content?": "Iam interested",
    },
    {
      "Timestamp": "6/25/2025 11:19:34",
      "Full Name": "Palaparthi sambasiva",
      "Phone number": 7780306792,
      "Education or Background": "B.com (COMPUTERS)",
      "Email": "palaparthisambhasiva6@gmail.com",
      "Address": "Bapatla (AP)",
      "How did you hear about this opportunity?": "Brother",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu",
      "Interested Role": "Editor",
      "Any past experience? Describe or share links": "4years",
      "Why are you interested in historical content?":
          "I am interested in historical  contents",
    },
    {
      "Timestamp": "6/25/2025 19:24:53",
      "Full Name": "Gunturu Chandan",
      "Phone number": 8142535738,
      "Education or Background": "Diploma in mechanical, BTech in mechanical",
      "Email": "gchandan2607@gmail.com",
      "Address":
          "Flat 101 Akash residency Madurwada opposite of sails software solutions",
      "How did you hear about this opportunity?": "Whats app",
      "Laptop available?": "Maybe",
      "Languages you can speak/write": "English",
      "Interested Role": "Business analyst",
      "Any past experience? Describe or share links":
          "I’m having a 1.7 years of experience in business analyst along with manual testing, where I have involved in government sector projects",
      "Why are you interested in historical content?": "For a change",
    },
    {
      "Timestamp": "6/26/2025 7:00:55",
      "Full Name": "Babitha Anapalli",
      "Phone number": 9381725186,
      "Education or Background": "B Tech",
      "Email": "babithareddy2298@gmail.com",
      "Address": "Nellore",
      "How did you hear about this opportunity?": "Paper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "English",
      "Interested Role": "Editor",
      "Any past experience? Describe or share links":
          "Yes I have experience in Technotran company in this company my role was admin manager in  that I have experience in content writer and editor.",
      "Why are you interested in historical content?":
          "I'm interested in historical content because it helps us understand how the world has changed over time. It teaches valuable lessons from past events, cultures, and people.",
    },
    {
      "Timestamp": "6/26/2025 8:16:48",
      "Full Name": "KALESHA CHIDADALA",
      "Phone number": 9392705300,
      "Education or Background": "BSc (Maths, Statistics and Computer Science)",
      "Email": "kaleshachidadala@gmail.com",
      "Address":
          "Biradavolu village, Podalakur Mandal, SPSR Nellore District, Andhra Pradesh-524345.",
      "How did you hear about this opportunity?": "Sakshi Newspaper Ad",
      "Laptop available?": "No",
      "Languages you can speak/write": "Telugu, English",
      "Interested Role": "Script Writer, Researcher, Social Media, Accountant",
      "Any past experience? Describe or share links": "No",
      "Why are you interested in historical content?":
          "I'm drawn to historical content because it provides valuable context and insights into the complexities of human societies, cultures, and events. Understanding the past helps us learn from successes and failures, informing our decisions and actions in the present. I'm excited about the opportunity to explore and share historical knowledge, analyzing its relevance and impact on contemporary issues.",
    },
    {
      "Timestamp": "6/26/2025 9:09:11",
      "Full Name": "Alakunta nikhil kalyan",
      "Phone number": 7799508208,
      "Education or Background": "Graduate",
      "Email": "alakuntanikhilkalyan@gmail.com",
      "Address": "Nellore",
      "How did you hear about this opportunity?": "Sakshi Newspaper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English",
      "Interested Role": "Editor, Script Writer, Researcher, Social Media",
      "Any past experience? Describe or share links":
          "I can create images, AI Avatars,a small animations using ai with best prompts. Also I'm decent at video editing and YouTube thumbnails.  I can do the best SEO.",
      "Why are you interested in historical content?":
          "I'm very interested to know about historic events and share them in video formet to people who interested on it",
    },
    {
      "Timestamp": "6/26/2025 9:27:56",
      "Full Name": "Nukalaboina Alekhya",
      "Phone number": 6304315413,
      "Education or Background": "MBA",
      "Email": "nalekhya8247@gmail.com",
      "Address": "Bhagat Singh colony, proddatur, Kadapa district",
      "How did you hear about this opportunity?": "Sakshi Newspaper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English",
      "Interested Role": "Accountant, HR/Coordinator",
      "Any past experience? Describe or share links": "No I am fresher",
      "Why are you interested in historical content?":
          "History shows the roots of our cultures, systems, beliefs, and conflicts.The Industrial Revolution explains how modern economies and cities developed. It reveals how people respond to challenges like war, disease, injustice, or change.",
    },
    {
      "Timestamp": "6/26/2025 10:17:35",
      "Full Name": "Shaik abdul moheed",
      "Phone number": 8555991264,
      "Education or Background": "Degree b.Com",
      "Email": "moheed79449@gmail.com",
      "Address": "Eedgamitta down, santhapeta, nellore",
      "How did you hear about this opportunity?": "Eenadu Newspaper Ad",
      "Laptop available?": "No",
      "Languages you can speak/write": "Telugu, English, Hindi",
      "Interested Role":
          "Anchor, Editor, Script Writer, Researcher, Social Media, Accountant, HR/Coordinator",
      "Any past experience? Describe or share links": "As accountant",
      "Why are you interested in historical content?": "Kingdoms",
    },
    {
      "Timestamp": "6/26/2025 10:18:31",
      "Full Name": "K Prema Kumari",
      "Phone number": 9908615149,
      "Education or Background": "Pharm D",
      "Email": "prema.kevin27@gmail.com",
      "Address": "Near Aditya Degree College, Nellore",
      "How did you hear about this opportunity?": "Sakshi Newspaper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English",
      "Interested Role": "Social Media, HR/Coordinator",
      "Any past experience? Describe or share links":
          "Working as HR in Pharma Company",
      "Why are you interested in historical content?": "",
    },
    {
      "Timestamp": "6/26/2025 10:21:29",
      "Full Name": "BODEDDULA VENKATESWARLU",
      "Phone number": 9701648150,
      "Education or Background": "Digree",
      "Email": "bvenkatesh.in@gmail.com",
      "Address": "Eskapalem viroor podalakuru spsrnellore pin. 524309..A. P",
      "How did you hear about this opportunity?": "WhatsApp Forward / Group",
      "Laptop available?": "No",
      "Languages you can speak/write": "Telugu,",
      "Interested Role": "HR/Coordinator",
      "Any past experience? Describe or share links": "",
      "Why are you interested in historical content?": "",
    },
    {
      "Timestamp": "6/26/2025 10:33:23",
      "Full Name": "M koteswar singh",
      "Phone number": 9866535372,
      "Education or Background": "B com computers",
      "Email": "koti.singh@gmail.com",
      "Address": "Nellore a.p",
      "How did you hear about this opportunity?": "Sakshi Newspaper Ad",
      "Laptop available?": "No",
      "Languages you can speak/write": "Telugu, English, Hindi",
      "Interested Role": "Accountant, Computer operator",
      "Any past experience? Describe or share links":
          "Above 7 years experience as admin",
      "Why are you interested in historical content?":
          "General knowledge purpose",
    },
    {
      "Timestamp": "6/26/2025 10:49:11",
      "Full Name": "Vedavalli. Umadevi",
      "Phone number": 7793920899,
      "Education or Background": "MBA(Hr)",
      "Email": "vedavalliumadevi05@gmail.com",
      "Address": "Proddatur",
      "How did you hear about this opportunity?": "Sakshi Newspaper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English",
      "Interested Role": "HR/Coordinator",
      "Any past experience? Describe or share links": "Hr Recuiter",
      "Why are you interested in historical content?": "",
    },
    {
      "Timestamp": "6/26/2025 11:11:50",
      "Full Name": "V venkat ramana",
      "Phone number": 7799030368,
      "Education or Background": "Mcom and B. Ed",
      "Email": "vramana04@gmail.com",
      "Address": "Punganur, chittoor district AP",
      "How did you hear about this opportunity?": "Eenadu Newspaper Ad",
      "Laptop available?": "No",
      "Languages you can speak/write": "Telugu, English, Hindi",
      "Interested Role": "Script Writer, Accountant, HR/Coordinator",
      "Any past experience? Describe or share links": "Accountant",
      "Why are you interested in historical content?":
          "To promote our indian heritage and culture",
    },
    {
      "Timestamp": "6/26/2025 11:13:50",
      "Full Name": "naga jothi",
      "Phone number": 9100397039,
      "Education or Background": "Degree (cpt)",
      "Email": "",
      "Address": "kadapa",
      "How did you hear about this opportunity?": "agenceys kadapa",
      "Laptop available?": "no",
      "Languages you can speak/write": "telugu,",
      "Interested Role": "voice",
      "Any past experience? Describe or share links": "running youtuber",
      "Why are you interested in historical content?": "yes",
    },
    {
      "Timestamp": "6/26/2025 11:37:10",
      "Full Name": "Siddavatam srinivas",
      "Phone number": 9390529613,
      "Education or Background": "Master of social work",
      "Email": "srinusanthi27@gmail.com",
      "Address": "5/413-6 c.v Rao street Kadapa",
      "How did you hear about this opportunity?": "Sakshi Newspaper Ad",
      "Laptop available?": "No",
      "Languages you can speak/write": "Telugu, English, Hindi, Kannada",
      "Interested Role": "Researcher, Any job",
      "Any past experience? Describe or share links": "No",
      "Why are you interested in historical content?":
          "Iam Brahmin learned Purnas and ithihas",
    },
    {
      "Timestamp": "6/26/2025 11:53:24",
      "Full Name": "Rafi Md",
      "Phone number": 9100265745,
      "Education or Background": "MCA",
      "Email": "rafimd7488@gmail.com",
      "Address": "Podalkur Road, Nellore-524004",
      "How did you hear about this opportunity?": "Sakshi Newspaper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English, Hindi",
      "Interested Role": "Editor, Accountant, HR/Coordinator",
      "Any past experience? Describe or share links":
          "Working as a Branch Incharge in E-commerce company",
      "Why are you interested in historical content?": "",
    },
    {
      "Timestamp": "6/26/2025 12:16:19",
      "Full Name": "Nagalakshmi Panidapu",
      "Phone number": 7842516095,
      "Education or Background": "BTech",
      "Email": "panidapunagalakshmi19@gmail.com",
      "Address": "",
      "How did you hear about this opportunity?": "Sakshi Newspaper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English",
      "Interested Role": "Editor, Accountant",
      "Any past experience? Describe or share links": "Fresher",
      "Why are you interested in historical content?": "",
    },
    {
      "Timestamp": "6/26/2025 12:28:58",
      "Full Name": "Shaik Janibasha",
      "Phone number": 6309430583,
      "Education or Background": "Degree",
      "Email": "janibashashaik818@gmail.com",
      "Address": "Chilakaluripet",
      "How did you hear about this opportunity?": "Eenadu Newspaper Ad",
      "Laptop available?": "No",
      "Languages you can speak/write": "Telugu, Hindi",
      "Interested Role": "Editor, Social Media, Accountant",
      "Any past experience? Describe or share links": 2,
      "Why are you interested in historical content?": "No",
    },
    {
      "Timestamp": "6/26/2025 12:46:50",
      "Full Name": "Amara vamsi Krishna",
      "Phone number": 8919081473,
      "Education or Background": "B tech",
      "Email": "vamseekrishna6877@gmail.com",
      "Address": "Buchi Nellore district",
      "How did you hear about this opportunity?": "Eenadu Newspaper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English",
      "Interested Role": "Editor, Researcher, Accountant, HR/Coordinator",
      "Any past experience? Describe or share links":
          "Have experience as data entry operator",
      "Why are you interested in historical content?": "Yes",
    },
    {
      "Timestamp": "6/26/2025 12:50:43",
      "Full Name": "Daale kumara swamy",
      "Phone number": 7670839305,
      "Education or Background": "Degree B.Com(com)",
      "Email": "dalekumaraswamy@gmail.com",
      "Address": "5/45 harijanawada street Ramanapalli Chennur kadapa",
      "How did you hear about this opportunity?": "Sakshi Newspaper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English, Hindi",
      "Interested Role": "Editor, HR/Coordinator",
      "Any past experience? Describe or share links": "No",
      "Why are you interested in historical content?": "Yes",
    },
    {
      "Timestamp": "6/26/2025 12:51:15",
      "Full Name": "Palla krishna mohan",
      "Phone number": 9642219809,
      "Education or Background": "Bsc mpcs",
      "Email": "p4krishnamohan@gmail.com",
      "Address": "Hyderabad",
      "How did you hear about this opportunity?": "Sakshi Newspaper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English, Hindi",
      "Interested Role": "HR/Coordinator",
      "Any past experience? Describe or share links": "Construction supervisor",
      "Why are you interested in historical content?": "",
    },
    {
      "Timestamp": "6/26/2025 13:02:29",
      "Full Name": "Rama kumar. D.L.V",
      "Phone number": 9063935537,
      "Education or Background": "Graduation",
      "Email": "ramakumardlv@gmail.com",
      "Address":
          "#23-1-546,Thambaramvari street,opp SLV Towers,Fathekhanpeta,Nellore-3",
      "How did you hear about this opportunity?": "Sakshi Newspaper Ad",
      "Laptop available?": "No",
      "Languages you can speak/write": "Telugu, English",
      "Interested Role": "Accountant",
      "Any past experience? Describe or share links":
          "EXPERIENCED AS ACCOUNTANT Like various accounts,Credit bills & GST etc",
      "Why are you interested in historical content?": "Iike places",
    },
    {
      "Timestamp": "6/26/2025 13:33:48",
      "Full Name": "Navitha",
      "Phone number": 9515874213,
      "Education or Background": "Graduated",
      "Email": "navi.15eee@gmail.com",
      "Address": "4-9-1/2, balaji Nagar,Kurnool",
      "How did you hear about this opportunity?": "WhatsApp Forward / Group",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English",
      "Interested Role": "Social Media, Accountant, HR/Coordinator",
      "Any past experience? Describe or share links":
          "I have 1year of experience in sales department",
      "Why are you interested in historical content?": "",
    },
    {
      "Timestamp": "6/26/2025 14:58:07",
      "Full Name": "Radhakrishna Nagipogu",
      "Phone number": 8985193956,
      "Education or Background": "M. Tech",
      "Email": "shark21377@gmail.com",
      "Address": "Kadapa",
      "How did you hear about this opportunity?": "Eenadu Newspaper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English, Hindi",
      "Interested Role": "Editor, Script Writer",
      "Any past experience? Describe or share links": "Teaching",
      "Why are you interested in historical content?": "",
    },
    {
      "Timestamp": "6/26/2025 15:25:55",
      "Full Name": "Chundi Manasa",
      "Phone number": 8333076606,
      "Education or Background": "B.com computers",
      "Email": "chmanasanellore@gmail.com",
      "Address": "Nellore",
      "How did you hear about this opportunity?": "Sakshi Newspaper Ad",
      "Laptop available?": "No",
      "Languages you can speak/write": "Telugu, English",
      "Interested Role":
          "Anchor, Editor, Social Media, Accountant, HR/Coordinator",
      "Any past experience? Describe or share links":
          "I have experience in Java full stock",
      "Why are you interested in historical content?":
          "Iam interested to know about the things which I don’t know",
    },
    {
      "Timestamp": "6/26/2025 17:34:44",
      "Full Name": "Pusalasivakumar",
      "Phone number": 9032719871,
      "Education or Background": "M. B. A",
      "Email": "pusalasivakumar241986@gmail.com",
      "Address": "Nellore district, kovur",
      "How did you hear about this opportunity?": "Locsl app",
      "Laptop available?": "No",
      "Languages you can speak/write": "Telugu, English,",
      "Interested Role": "Accountant,",
      "Any past experience? Describe or share links":
          "Echier tractors pvt ltd and bull constructions experienced past ten years",
      "Why are you interested in historical content?": "Yes",
    },
    {
      "Timestamp": "6/27/2025 7:30:55",
      "Full Name": "Desireddy Guru mohan reddy",
      "Phone number": 6302843994,
      "Education or Background": "B.tech",
      "Email": "gurumohanreddy786@gmail.com",
      "Address": "3/11, jammalamadugu, b.r.kottala, ysr Kadapa, Andhra Pradesh",
      "How did you hear about this opportunity?": "Sakshi Newspaper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English, Hindi",
      "Interested Role": "Researcher, Accountant, HR/Coordinator",
      "Any past experience? Describe or share links": "Yes",
      "Why are you interested in historical content?":
          "Historical content is interested",
    },
    {
      "Timestamp": "6/27/2025 7:34:05",
      "Full Name": "P MurthiReddy",
      "Phone number": 7680052527,
      "Education or Background": "BSc",
      "Email": "murthireddy768@gmail.com",
      "Address": "Gudur, Tirupati District",
      "How did you hear about this opportunity?": "Sakshi Newspaper Ad",
      "Laptop available?": "No",
      "Languages you can speak/write": "Telugu, English",
      "Interested Role":
          "Editor, Social Media, Accountant, HR/Coordinator, I have own desktop computer with an Internet, I have experienced in typing english, telugu, hindi. I know photoshop, tally, audio/video editing or any new software. Presently Iam managing with all types of works with my online team from Hyderabad, banglore and various places. Now Iam a Management of all works with my staff only.",
      "Any past experience? Describe or share links":
          "Worked in Educational Institutes as a computer operator, Accountant at present HR-Admin",
      "Why are you interested in historical content?":
          "Iam interested in working",
    },
    {
      "Timestamp": "6/27/2025 9:54:58",
      "Full Name": "Dronadula Rama Chandra mouli",
      "Phone number": 9440386808,
      "Education or Background": "MASTER DEGREE",
      "Email": "anandrama310@gmail.com",
      "Address": "Balaji NAGAR 18TH CROSS ROAD NELLORE",
      "How did you hear about this opportunity?": "Sakshi Newspaper Ad",
      "Laptop available?": "No",
      "Languages you can speak/write": "Telugu, English, Hindi",
      "Interested Role":
          "Anchor, Editor, Script Writer, Researcher, Social Media, Accountant, HR/Coordinator, Socially society supported",
      "Any past experience? Describe or share links":
          "I have experienced but I don't have Link",
      "Why are you interested in historical content?":
          "It's more than secrets hidden things   not knowing more than valueable things here",
    },
    {
      "Timestamp": "6/27/2025 14:10:39",
      "Full Name": "S.Naga Jyothi",
      "Phone number": 9347846328,
      "Education or Background": "Graduation",
      "Email": "sangapatnamnagajyothi2000@gmail.com",
      "Address": "Akkayapalli, kadapa",
      "How did you hear about this opportunity?": "Eenadu Newspaper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English",
      "Interested Role": "Editor, Social Media, Accountant, HR/Coordinator",
      "Any past experience? Describe or share links": "No",
      "Why are you interested in historical content?":
          "About our indian history",
    },
    {
      "Timestamp": "6/27/2025 14:38:52",
      "Full Name": "Meesala Naveen",
      "Phone number": 7093726193,
      "Education or Background": "P.G (MCA)",
      "Email": "naveenmeesala6304@gmail.com",
      "Address": "Chennuru, kadapa district",
      "How did you hear about this opportunity?": "Eenadu Newspaper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English",
      "Interested Role":
          "Editor, Social Media, Accountant, HR/Coordinator, System work, Data entry",
      "Any past experience? Describe or share links": "Yes",
      "Why are you interested in historical content?": "Very interested",
    },
    {
      "Timestamp": "6/27/2025 14:43:11",
      "Full Name": "SHAIK RIYAZ BASHA",
      "Phone number": 9492290111,
      "Education or Background": "B.com graduate",
      "Email": "shaikriyazfayaz786@gmail.com",
      "Address": "Nandalur Tangutur Road",
      "How did you hear about this opportunity?": "Sakshi Newspaper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English, Hindi",
      "Interested Role": "Editor, Social Media",
      "Any past experience? Describe or share links": "No",
      "Why are you interested in historical content?": "",
    },
    {
      "Timestamp": "6/27/2025 14:51:06",
      "Full Name": "Honook",
      "Phone number": 8978741028,
      "Education or Background": "B.A",
      "Email": "david.hanook@gmail.com",
      "Address": "d.no 9/216 horeb compund Gooty r.s  Anantapur dt",
      "How did you hear about this opportunity?": "Eenadu Newspaper Ad",
      "Laptop available?": "No",
      "Languages you can speak/write": "Telugu",
      "Interested Role": "Editor, Social Media",
      "Any past experience? Describe or share links": "",
      "Why are you interested in historical content?": "",
    },
    {
      "Timestamp": "6/27/2025 16:14:14",
      "Full Name": "NAKKA GOPALU",
      "Phone number": 9573911425,
      "Education or Background": "Degree",
      "Email": "gopal.nakka404@gmail.com",
      "Address": "Kadapa",
      "How did you hear about this opportunity?": "Sakshi Newspaper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English",
      "Interested Role": "Accountant",
      "Any past experience? Describe or share links": 10,
      "Why are you interested in historical content?": "",
    },
    {
      "Timestamp": "6/28/2025 7:24:35",
      "Full Name": "SUDHEER BABU NALLABALLE",
      "Phone number": 8374240389,
      "Education or Background": "B.Tech",
      "Email": "sunidherr123@gmail.com",
      "Address": "",
      "How did you hear about this opportunity?": "WhatsApp Forward / Group",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English",
      "Interested Role": "Script Writer, Researcher, Social Media",
      "Any past experience? Describe or share links":
          "No. But I have a great cinema knowlege.",
      "Why are you interested in historical content?": "",
    },
    {
      "Timestamp": "6/28/2025 9:11:34",
      "Full Name": "Sanivarapu gangadhara",
      "Phone number": 6301287184,
      "Education or Background": "M.tech",
      "Email": "gangadharswetha20@gmail.com",
      "Address": "Kadapa",
      "How did you hear about this opportunity?": "Eenadu Newspaper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English",
      "Interested Role": "Social Media, Accountant, HR/Coordinator",
      "Any past experience? Describe or share links": "4 years",
      "Why are you interested in historical content?": "Yes",
    },
    {
      "Timestamp": "6/28/2025 10:42:28",
      "Full Name": "Omkaram sreenivasulu",
      "Phone number": 8686539635,
      "Education or Background": "M.B.A",
      "Email": "osrinivas.omkaram@gmail.com",
      "Address": "West gogulapalli, allur mandal, spsr Nellore district",
      "How did you hear about this opportunity?": "Sakshi Newspaper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English",
      "Interested Role": "Anchor, Editor, HR/Coordinator, Business analyst",
      "Any past experience? Describe or share links":
          "Soft skill trainer and teacher",
      "Why are you interested in historical content?":
          "Interest  in your content skills",
    },
    {
      "Timestamp": "6/28/2025 10:54:10",
      "Full Name": "MACHA Divya",
      "Phone number": 8639338468,
      "Education or Background": "MBA",
      "Email": "divyasai872@gmail.com",
      "Address": "Proddatur",
      "How did you hear about this opportunity?": "Eenadu Newspaper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English",
      "Interested Role": "Social Media, HR/Coordinator",
      "Any past experience? Describe or share links": "No",
      "Why are you interested in historical content?": "",
    },
    {
      "Timestamp": "6/28/2025 10:58:42",
      "Full Name": "kalagandha silpa",
      "Phone number": 9618587167,
      "Education or Background": "Mba",
      "Email": "shilpakalagandha@gmail.com",
      "Address": "jyothinagar nellore",
      "How did you hear about this opportunity?": "Sakshi Newspaper Ad",
      "Laptop available?": "No",
      "Languages you can speak/write": "Telugu, English",
      "Interested Role": "Accountant, HR/Coordinator",
      "Any past experience? Describe or share links": "1year",
      "Why are you interested in historical content?": "",
    },
    {
      "Timestamp": "6/28/2025 11:22:13",
      "Full Name": "Syed Tasleem",
      "Phone number": 7981533930,
      "Education or Background": "Mca",
      "Email": "Sd.tasleem2003@gmail.com",
      "Address": "Khuddus Nagar, Nellore",
      "How did you hear about this opportunity?": "Friend / Referral",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English, Hindi",
      "Interested Role": "Editor, Social Media, HR/Coordinator",
      "Any past experience? Describe or share links": "NA",
      "Why are you interested in historical content?": "NA",
    },
    {
      "Timestamp": "6/28/2025 11:40:02",
      "Full Name": "Supriya tammireddy",
      "Phone number": 9581860010,
      "Education or Background": "M.tech",
      "Email": "supriya.tapaswi28@gmail.com",
      "Address": "Buchireddypalem,nellore",
      "How did you hear about this opportunity?": "Sakshi Newspaper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English, Hindi",
      "Interested Role": "Script Writer, Researcher, HR/Coordinator",
      "Any past experience? Describe or share links": "No",
      "Why are you interested in historical content?":
          "I interested this field .",
    },
    {
      "Timestamp": "6/28/2025 11:40:20",
      "Full Name": "Keshava",
      "Phone number": "93818 78100",
      "Education or Background": "MBA",
      "Email": "",
      "Address": "",
      "How did you hear about this opportunity?": "Eenadu Newspaper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu",
      "Interested Role": "Anchor, HR/Coordinator",
      "Any past experience? Describe or share links": "",
      "Why are you interested in historical content?": "",
    },
    {
      "Timestamp": "6/28/2025 13:23:07",
      "Full Name": "Pedaballi Nanda Kishore Reddy",
      "Phone number": 9703451994,
      "Education or Background": "B.com computers",
      "Email": "nandakishorepedaballe@gmail.com",
      "Address": "Kadapa",
      "How did you hear about this opportunity?": "WhatsApp Forward / Group",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English, Hindi",
      "Interested Role": "Accountant",
      "Any past experience? Describe or share links": "Yes",
      "Why are you interested in historical content?": "Intrested",
    },
    {
      "Timestamp": "6/28/2025 17:39:55",
      "Full Name": "Gangulagandla neelima",
      "Phone number": 7569771622,
      "Education or Background": "Btech",
      "Email": "neelimagangula25@gmail.com",
      "Address": "G335,rtpp,kalamalla",
      "How did you hear about this opportunity?": "Sakshi Newspaper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English",
      "Interested Role":
          "Editor, Script Writer, Researcher, Accountant, HR/Coordinator",
      "Any past experience? Describe or share links": "Fresher",
      "Why are you interested in historical content?":
          "Historical content excite me,want to more deep by learn each topic",
    },
    {
      "Timestamp": "6/28/2025 21:33:35",
      "Full Name": "Saikumar",
      "Phone number": 7989648109,
      "Education or Background": "Btech",
      "Email": "sanivarapusai021@gmail.com",
      "Address": "Kadapa",
      "How did you hear about this opportunity?": "WhatsApp Forward / Group",
      "Laptop available?": "Maybe",
      "Languages you can speak/write": "Telugu, English",
      "Interested Role":
          "Anchor, Researcher, Social Media, Accountant, HR/Coordinator",
      "Any past experience? Describe or share links": "",
      "Why are you interested in historical content?":
          "I do my best and i csn learn new technology to create my career",
    },
    {
      "Timestamp": "6/28/2025 22:59:02",
      "Full Name": "Keerthana chandala",
      "Phone number": 9390649859,
      "Education or Background": "B.tech(pursuing 2nd year)",
      "Email": "keerthanachandala@gmail.com",
      "Address": "N.G.O Colony,Near apsara circle,kadapa",
      "How did you hear about this opportunity?":
          "Social Media (Instagram / Facebook / YouTube)",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, Tamil",
      "Interested Role": "Script Writer, Social Media, HR/Coordinator",
      "Any past experience? Describe or share links":
          "I've been the representative of my class and coordinator for college events,meetings.I'm  very good at handling a team",
      "Why are you interested in historical content?":
          "History helps us understand the present by learning from past events and experiences.,History is the study of past events that helps us understand how the present world has been shaped. It reveals patterns in human behavior, teaches lessons from past mistakes, and provides insights into cultures, societies, and major turning points. By learning about history, we gain a deeper appreciation of our roots, understand the causes of modern issues, and make better decisions for the future. It also inspires us through stories of resilience, leadership, and change.",
    },
    {
      "Timestamp": "6/29/2025 9:15:32",
      "Full Name": "V.Pavani",
      "Phone number": 8978065155,
      "Education or Background": "M.sc physics",
      "Email": "pavanivr99@gmail.com",
      "Address": "Golagamudi,venkatachalam mandalam ,nellore",
      "How did you hear about this opportunity?": "Sakshi Newspaper Ad",
      "Laptop available?": "No",
      "Languages you can speak/write": "Telugu, English",
      "Interested Role": "Anchor, Editor, Researcher, Social Media,",
      "Any past experience? Describe or share links": "No",
      "Why are you interested in historical content?": "",
    },
    {
      "Timestamp": "6/29/2025 9:29:23",
      "Full Name": "BANDI CHANDRA SEKHAR RAO",
      "Phone number": 9393452444,
      "Education or Background": "BSC(INFORMATION TECHNOLOGY)",
      "Email": "lakshmidurgasolutions@gmail.com",
      "Address":
          "D.NO.29-12-26, VENKATA RATNAM STREET, SURYA RAO PET, VIJAYAWADA-520002",
      "How did you hear about this opportunity?": "Eenadu Newspaper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English, Hindi",
      "Interested Role":
          "Editor, Social Media, DESIGNS, THUMBNAIL CREATIONS, SM POST DESIGNS ETC.",
      "Any past experience? Describe or share links": "",
      "Why are you interested in historical content?": "",
    },
    {
      "Timestamp": "6/29/2025 10:14:04",
      "Full Name": "Sai keerthi",
      "Phone number": 8688995155,
      "Education or Background": "Bsc",
      "Email": "saikeerthilucky63@gmail.com",
      "Address": "Kadapa, andhrapradesh",
      "How did you hear about this opportunity?": "Eenadu Newspaper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English",
      "Interested Role": "HR/Coordinator",
      "Any past experience? Describe or share links":
          "I had done 6 months as a Salesforce developer.",
      "Why are you interested in historical content?":
          "Historical context is crucial for understanding the present and future, as it provides valuable insights",
    },
    {
      "Timestamp": "6/29/2025 10:37:40",
      "Full Name": "Guduru vijay",
      "Phone number": 8555828493,
      "Education or Background": "B. Com computer(Degree)",
      "Email": "vijayreddygudur@gmail.com",
      "Address": "Vrc nellore",
      "How did you hear about this opportunity?": "Sakshi Newspaper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English",
      "Interested Role": "Anchor, Accountant, HR/Coordinator",
      "Any past experience? Describe or share links":
          "10 years experince as an accountant",
      "Why are you interested in historical content?": "",
    },
    {
      "Timestamp": "6/29/2025 10:45:15",
      "Full Name": "sreekanth bynaboyina",
      "Phone number": 9989729251,
      "Education or Background": "Degree",
      "Email": "sreekanth.bynaboyina@gmail.com",
      "Address": "Journalist colony,Atmakur(M)(P),SPSR Nellore(D)",
      "How did you hear about this opportunity?": "Sakshi Newspaper Ad",
      "Laptop available?": "No",
      "Languages you can speak/write": "Telugu, English",
      "Interested Role": "Script Writer, HR/Coordinator",
      "Any past experience? Describe or share links": "No",
      "Why are you interested in historical content?":
          "History helps explain current events",
    },
    {
      "Timestamp": "6/29/2025 11:09:09",
      "Full Name": "Villampariti kishore",
      "Phone number": 9849843153,
      "Education or Background": "B com (CA)",
      "Email": "manik8037@gmail.com",
      "Address": "Gudur",
      "How did you hear about this opportunity?": "Sakshi Newspaper Ad",
      "Laptop available?": "No",
      "Languages you can speak/write": "Telugu, English",
      "Interested Role": "Anchor, Social Media, HR/Coordinator",
      "Any past experience? Describe or share links":
          "DRDA office work in mandal coordinator",
      "Why are you interested in historical content?": "Good thing job",
    },
    {
      "Timestamp": "6/29/2025 11:46:05",
      "Full Name": "Kaku dileep",
      "Phone number": 6302213835,
      "Education or Background": "CA inter and B.com",
      "Email": "kakudileep251@gmail.com",
      "Address": "5/217 vikalangula colony buja buja nellore",
      "How did you hear about this opportunity?": "Sakshi Newspaper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English",
      "Interested Role": "Accountant",
      "Any past experience? Describe or share links":
          "3 years as an accountant  in auditor office",
      "Why are you interested in historical content?": "",
    },
    {
      "Timestamp": "6/29/2025 12:01:51",
      "Full Name": "Kovuru swapna",
      "Phone number": 9959316119,
      "Education or Background": "Btech",
      "Email": "swapnacse.gist@gmail.com",
      "Address": "Vedayapalem, nellore",
      "How did you hear about this opportunity?": "Sakshi Newspaper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English",
      "Interested Role": "Accountant, HR/Coordinator",
      "Any past experience? Describe or share links": "No, fresher",
      "Why are you interested in historical content?":
          "Iam excited about the opportunity and iam eager to contribute to the team, iam motivated to learn and grow in this role and iam confident that i can make a positive impact",
    },
    {
      "Timestamp": "6/29/2025 12:11:09",
      "Full Name": "Sravan Kumar N",
      "Phone number": 9666989475,
      "Education or Background": "Bachelor Degree(BSc)",
      "Email": "nskumar.sk5@gmail.com",
      "Address": "B.V.Nagar, Nellore",
      "How did you hear about this opportunity?": "Eenadu Newspaper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English",
      "Interested Role": "Editor, Script Writer, Social Media",
      "Any past experience? Describe or share links":
          "I have experience in internal auditing and senior sale officer in HDB FINANCIAL SERVICES.",
      "Why are you interested in historical content?": "Career opportunities",
    },
    {
      "Timestamp": "6/29/2025 12:45:49",
      "Full Name": "B v krishna reddy",
      "Phone number": 9346376651,
      "Education or Background": "M.com",
      "Email": "krishna.30aj@gmail.com",
      "Address": "Kadapa",
      "How did you hear about this opportunity?": "Eenadu Newspaper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English, Hindi",
      "Interested Role": "Editor, Script Writer, Researcher, Accountant",
      "Any past experience? Describe or share links":
          "Previously worked as a SEE",
      "Why are you interested in historical content?": "",
    },
    {
      "Timestamp": "6/29/2025 13:45:30",
      "Full Name": "Pavan vele",
      "Phone number": 6305354358,
      "Education or Background": "Agriculture diploma",
      "Email": "pavanvele990544@gmail.com",
      "Address": "Konidela(v), nandikotkur(m), nandyal(d)",
      "How did you hear about this opportunity?": "Eenadu Newspaper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English",
      "Interested Role": "Researcher, HR/Coordinator",
      "Any past experience? Describe or share links":
          "I am work as a supervisor in 200 acers form, marketing  executive in my seeds pvt Ltd,and also I work CEO for former producer organization under central government scheme",
      "Why are you interested in historical content?":
          "I like historical contents because learn new thing every minute",
    },
    {
      "Timestamp": "6/29/2025 13:54:21",
      "Full Name": "KOTHULA SHABBIR HUSSAIN",
      "Phone number": 7993139137,
      "Education or Background": "DEGREE",
      "Email": "shabbirhussain353812@gmail.com",
      "Address": "Chilamkuru, kadapa",
      "How did you hear about this opportunity?": "WhatsApp Forward / Group",
      "Laptop available?": "Maybe",
      "Languages you can speak/write": "Telugu, English, Hindi",
      "Interested Role": "Editor, Script Writer, HR/Coordinator",
      "Any past experience? Describe or share links": "Noits",
      "Why are you interested in historical content?":
          "Its my passion to work for historic content",
    },
    {
      "Timestamp": "6/29/2025 16:55:22",
      "Full Name": "J Penchalaprasad",
      "Phone number": 7330007288,
      "Education or Background": "MBA",
      "Email": "saibavaniprasad225@gmail.com",
      "Address": "Nellore",
      "How did you hear about this opportunity?": "Sakshi Newspaper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English, Tamil",
      "Interested Role": "Accountant",
      "Any past experience? Describe or share links": "5+",
      "Why are you interested in historical content?": "Culture",
    },
    {
      "Timestamp": "6/29/2025 17:10:37",
      "Full Name": "Koruturu Mahesh",
      "Phone number": 8985717076,
      "Education or Background": "Bcom computer",
      "Email": "maheshk875@gmail.com",
      "Address": "Mypadu village, indukurpet mandal, spsr Nellore",
      "How did you hear about this opportunity?": "Sakshi Newspaper Ad",
      "Laptop available?": "No",
      "Languages you can speak/write": "Telugu, Hindi",
      "Interested Role": "Accountant, HR/Coordinator",
      "Any past experience? Describe or share links": 7,
      "Why are you interested in historical content?": "",
    },
    {
      "Timestamp": "6/29/2025 19:31:35",
      "Full Name": "Kambala reddaiah",
      "Phone number": 7981443364,
      "Education or Background": "M.A.",
      "Email": "reddaiahkambala@gmail.com",
      "Address":
          "Kattakindapalli (village) kommanavaripalli(post) pullampet (mandal)kadapa(district)Andhra Pradesh pincode 516107",
      "How did you hear about this opportunity?": "Eenadu Newspaper Ad",
      "Laptop available?": "Yes",
      "Languages you can speak/write": "Telugu, English, Hindi",
      "Interested Role": "Script Writer, Researcher",
      "Any past experience? Describe or share links": "No",
      "Why are you interested in historical content?":
          "I taught geography and history for heigh school students for many years so I am interested.",
    },
    {
      "Timestamp": "6/29/2025 19:37:41",
      "Full Name": "JAMPANA GANGADHAR REDDY",
      "Phone number": 9440107074,
      "Education or Background": "B.Sc(Bio-technology)",
      "Email": "grjampana@gmail.com",
      "Address": "2/80, bkothapalli, mydukur,kadapa,ap,516172.",
      "How did you hear about this opportunity?": "Eenadu Newspaper Ad",
      "Laptop available?": "No",
      "Languages you can speak/write": "Telugu, English",
      "Interested Role": "Editor, Researcher, Accountant",
      "Any past experience? Describe or share links":
          "3 years accountant,\n1 year internal auditor,\n1 year spare parts incharge.",
      "Why are you interested in historical content?": "Upcoming technology",
    },
  ];

   List<String> knownResumeAssets = [
    'assets/resumes/6301287184_resume.pdf',
    'assets/resumes/6302843994_Resume.pdf',
    'assets/resumes/6304315413_Resume.docx',
    'assets/resumes/6309430583_resume.pdf',
    'assets/resumes/7093726193_resume.pdf',
    'assets/resumes/7670839305_resume.pdf',
    'assets/resumes/7780306792_Resume.pdf',
    'assets/resumes/7793920899_Resume.pdf',
    'assets/resumes/7799030368_resume.pdf',
    'assets/resumes/7799508208_resume.docx',
    'assets/resumes/7981533930_Resume.pdf',
    'assets/resumes/8247440840_resume.docx',
    'assets/resumes/8333076606_resume.pdf',
    'assets/resumes/8555991264_Resume.pdf',
    'assets/resumes/8639338468_resume.docx',
    'assets/resumes/8686539635_resume.pdf',
    'assets/resumes/8919081473_resume.pdf',
    'assets/resumes/8978741028_resume.docx',
    'assets/resumes/8985193956_Resume.doc',
    'assets/resumes/9063935537_resume.pdf',
    'assets/resumes/9100265745_Resume.docx',
    'assets/resumes/9121228597_resume.docx',
    'assets/resumes/9347846328_Resume1.pdf',
    'assets/resumes/9381725186_resume.pdf',
    'assets/resumes/9381848258_resume.pdf',
    'assets/resumes/9381878100_resume.jpg',
    'assets/resumes/9390529613_Resume.pdf',
    'assets/resumes/9392705300_resume.pdf',
    'assets/resumes/9492290111_resume.jpg',
    'assets/resumes/9581860010_resume.docx',
    'assets/resumes/9618587167_resume.pdf',
    'assets/resumes/9642219809_Resume.docx',
    'assets/resumes/9701648150_resume.pdf',
    'assets/resumes/9703451994_Resume.pdf',
    'assets/resumes/9866535372_resume.pdf',
    'assets/resumes/9866535372.pdf',
    'assets/resumes/9908615149_resume.pdf',
    'assets/resumes/mdivya.docx',
    'assets/resumes/PHOTO-2025-06-29-08-37-21.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final candidate = reviewCandidates[currentIndex];
    final filteredCandidates =
        reviewCandidates
            .where(
              (c) =>
                  c["Full Name"].toString().toLowerCase().contains(
                    searchQuery.toLowerCase(),
                  ) ||
                  c["Phone number"].toString().contains(searchQuery),
            )
            .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Candidate Review - ${currentIndex + 1}/${reviewCandidates.length}",
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Text("Candidates", style: TextStyle(fontSize: 20)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search name or phone...",
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) => setState(() => searchQuery = value),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredCandidates.length,
                itemBuilder: (context, index) {
                  final c = filteredCandidates[index];
                  return ListTile(
                    title: Text(c["Full Name"]),
                    subtitle: Text(c["Phone number"].toString()),
                    onTap: () {
                      final actualIndex = reviewCandidates.indexOf(
                        c,
                      ); // get real index
                      setState(() {
                        currentIndex = actualIndex;
                        Navigator.pop(context); // close drawer
                      });
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                // Left Panel - Candidate Info
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.grey.shade100,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Candidate Details',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Divider(thickness: 1.2),

                          SizedBox(height: 8),
                          _infoTile('Name', candidate["Full Name"]),
                          _infoTile(
                            'Phone',
                            candidate["Phone number"].toString(),
                          ),
                          _infoTile('Email', candidate["Email"]),
                          _infoTile('Address', candidate["Address"]),
                          SizedBox(height: 12),

                          Text(
                            'Background',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Divider(),
                          _infoTile(
                            'Education',
                            candidate["Education or Background"],
                          ),
                          _infoTile(
                            'Heard From',
                            candidate["How did you hear about this opportunity?"],
                          ),
                          _infoTile(
                            'Laptop Available',
                            candidate["Laptop available?"],
                          ),
                          _infoTile(
                            'Languages',
                            candidate["Languages you can speak/write"],
                          ),
                          SizedBox(height: 12),

                          Text(
                            'Role & Experience',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Divider(),
                          _infoTile(
                            'Interested Role',
                            candidate["Interested Role"],
                          ),
                          _infoTile(
                            'Experience',
                            candidate["Any past experience? Describe or share links"],
                          ),
                          SizedBox(height: 12),

                          Text(
                            'Interest',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Divider(),
                          _infoTile(
                            'Interest in History',
                            candidate["Why are you interested in historical content?"],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // Right Panel Placeholder
                Expanded(
                  flex: 3,
                  child: Builder(
                    builder: (context) {
                      final phone = candidate["Phone number"].toString();

                      // Try to match any known path that includes this phone and ends with .pdf
                      final matchedPath = knownResumeAssets.firstWhere(
                            (path) => path.replaceAll(' ', '').contains(phone) && path.toLowerCase().endsWith('.pdf'),
                        orElse: () => '',
                      );

                      if (matchedPath.isNotEmpty) {
                        return SfPdfViewer.asset(matchedPath); // Render PDF from assets
                      } else {
                        return Center(
                          child: Text(
                            "Resume not available or not in PDF format.\nOnly PDFs are supported.",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16),
                          ),
                        );
                      }
                    },
                  ),
                )
              ],
            ),
          ),
          // Bottom Navigation Buttons
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton.icon(
                  onPressed:
                      currentIndex > 0
                          ? () => setState(() => currentIndex--)
                          : null,
                  icon: Icon(Icons.arrow_back),
                  label: Text("Previous"),
                ),
                SizedBox(width: 20),
                OutlinedButton.icon(
                  onPressed:
                      currentIndex < reviewCandidates.length - 1
                          ? () => setState(() => currentIndex++)
                          : null,
                  icon: Icon(Icons.arrow_forward),
                  label: Text("Next"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }


  Widget _infoTile(String label, String? value) {
    final displayValue = value?.isNotEmpty == true ? value! : '—';

    return Padding(
      padding: const EdgeInsets.only(bottom: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 14.5, color: Colors.black87),
                children: [
                  TextSpan(
                    text: '$label: ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: displayValue),
                ],
              ),
            ),
          ),
          if (value != null && value.isNotEmpty)
            IconButton(
              icon: Icon(Icons.copy, size: 18),
              tooltip: 'Copy $label',
              onPressed: () {
                Clipboard.setData(ClipboardData(text: value));
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('$label copied')),
                );
              },
            ),
        ],
      ),
    );
  }

}
