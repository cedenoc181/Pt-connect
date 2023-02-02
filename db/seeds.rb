# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
# require 'rest-client'
p"destroy all old data ♻️"
User.destroy_all
PhysicalTherapist.destroy_all
Favorite.destroy_all
Exercise.destroy_all
Appointment.destroy_all

 puts "seeding exercise Data 🌱"
 Exercise.create!(name: "3/4 sit-up", target: "abs", bodyPart: "Abs", equipment:"body weight", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0001.gif")
 Exercise.create!(name: "45° side bend", target: "abs", bodyPart: "Abs", equipment: "body weight", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0002.gif")
 Exercise.create!(name: "alternate heel touchers", target: "abs", bodyPart: "Abs", equipment: "body weight", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0006.gif")
 Exercise.create!(name: "assisted lying leg raise with lateral throw down", target: "abs", bodyPart: "Abs", equipment: "assisted", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0012.gif")
 Exercise.create!(name: "assisted motion russian twist", target: "abs", bodyPart: "Abs", equipment: "medicine ball", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0014.gif")
 Exercise.create!(name: "band alternating v-up", target: "abs", bodyPart: "Abs", equipment: "band", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0969.gif")
 Exercise.create!(name: "band assisted wheel rollerout", target: "abs", bodyPart: "Abs", equipment: "band", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0971.gif")
 Exercise.create!(name: "band bench press", target: "pectorals", bodyPart: "Chest", equipment: "band", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/1254.gif")
 Exercise.create!(name: "band one arm twisting chest press", target: "pectorals", bodyPart: "Chest", equipment: "band", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0989.gif")
 Exercise.create!(name: "barbell decline bench press", target: "pectorals", bodyPart: "Chest", equipment: "barbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0033.gif")
 Exercise.create!(name: "barbell decline pullover", target: "pectorals", bodyPart: "Chest", equipment: "barbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/1255.gif")
 Exercise.create!(name: "barbell decline wide-grip press", target: "pectorals", bodyPart: "Chest", equipment: "barbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0036.gif")
 Exercise.create!(name: "barbell front raise and pullover", target: "pectorals", bodyPart: "Chest", equipment: "barbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0040.gif")
 Exercise.create!(name: "barbell incline shoulder raise", target: "serratus anterior", bodyPart: "Chest", equipment: "barbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0050.gif")
 Exercise.create!(name: "barbell jefferson squat", target: "glutes", bodyPart: "Legs", equipment: "barbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0051.gif")
 Exercise.create!(name: "barbell jump squat", target: "glutes", bodyPart: "Legs", equipment: "barbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0053.gif")
 Exercise.create!(name: "barbell lateral lunge", target: "glutes", bodyPart: "Legs", equipment: "barbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/1410.gif")
 Exercise.create!(name: "band stiff leg deadlift", target: "glutes", bodyPart: "Legs", equipment: "band", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/1009.gif")
 Exercise.create!(name: "band straight back stiff leg deadlift", target: "glutes", bodyPart: "Legs", equipment: "band", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/1023.gif")
 Exercise.create!(name: "barbell clean and press", target: "quads", bodyPart: "Legs", equipment: "barbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0028.gif")
 Exercise.create!(name: "barbell clean-grip front squat", target: "glutes", bodyPart: "Legs", equipment: "barbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0029.gif")
 Exercise.create!(name: "barbell close-grip bench press", target: "triceps", bodyPart: "Arms", equipment: "barbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0030.gif")
 Exercise.create!(name: "barbell curl", target: "biceps", bodyPart: "Arms", equipment: "barbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0031.gif")
 Exercise.create!(name: "barbell decline close grip to skull press", target: "triceps", bodyPart: "Arms", equipment: "barbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0035.gif")
 Exercise.create!(name: "barbell incline close grip bench press", target: "triceps", bodyPart: "Arms", equipment: "barbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/1719.gif")
 Exercise.create!(name: "barbell incline reverse-grip press", target: "triceps", bodyPart: "Arms", equipment: "barbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0048.gif")
 Exercise.create!(name: "assisted standing triceps extension (with towel)", target: "triceps", bodyPart: "Arms", equipment: "assisted", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0018.gif")
 Exercise.create!(name: "assisted triceps dip (kneeling)", target: "triceps", bodyPart: "Arms", equipment: "leverage machine", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0019.gif")
 Exercise.create!(name: "band alternating biceps curl", target: "biceps", bodyPart: "Arms", equipment: "band", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0968.gif")
 Exercise.create!(name: "back pec stretch", target: "lats", bodyPart: "Back", equipment: "body weight", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/1405.gif")
 Exercise.create!(name: "back lever", target: "upper back", bodyPart: "Back", equipment: "body weight", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/3297.gif")
 Exercise.create!(name: "back extension on exercise ball", target: "spine", bodyPart: "Back", equipment: "stability ball", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/1314.gif")
 Exercise.create!(name: "barbell decline wide-grip pullover", target: "lats", bodyPart: "Back", equipment: "barbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0037.gif")
 Exercise.create!(name: "barbell incline row", target: "upper back", bodyPart: "Back", equipment: "barbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0049.gif")
 Exercise.create!(name: "barbell pendlay row", target: "upper back", bodyPart: "Back", equipment: "barbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/3017.gif")
 Exercise.create!(name: "barbell pullover", target: "lats", bodyPart: "Back", equipment: "barbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0073.gif")
 Exercise.create!(name: "barbell reverse grip incline bench row", target: "upper back", bodyPart: "Back", equipment: "barbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/1317.gif")
 Exercise.create!(name: "barbell reverse wrist curl", target: "forearms", bodyPart: "Arms", equipment: "barbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0082.gif")
 Exercise.create!(name: "barbell standing back wrist curl", target: "forearms", bodyPart: "Arms", equipment: "barbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0104.gif")
 Exercise.create!(name: "barbell wrist curl", target: "forearms", bodyPart: "Arms", equipment: "barbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0126.gif")
 Exercise.create!(name: "barbell wrist curl v. 2", target: "forearms", bodyPart: "Arms", equipment: "barbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0125.gif")
 Exercise.create!(name: "cable standing back wrist curl", target: "forearms", bodyPart: "Arms", equipment: "cable", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0224.gif")
 Exercise.create!(name: "band wrist curl", target: "forearms", bodyPart: "Arms", equipment: "band", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/1016.gif")
 Exercise.create!(name: "dumbbell finger curls", target: "forearms", bodyPart: "Arms", equipment: "dumbbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/1437.gif")
 Exercise.create!(name: "cable rear delt row (stirrups)", target: "delts", bodyPart: "Shoulders", equipment: "cable", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0202.gif")
 Exercise.create!(name: "cable rear delt row (with rope)", target: "delts", bodyPart: "Shoulders", equipment: "cable", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0203.gif")
 Exercise.create!(name: "cable seated rear lateral raise", target: "delts", bodyPart: "Shoulders", equipment: "cable", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0215.gif")
 Exercise.create!(name: "cable standing cross-over high reverse fly", target: "delts", bodyPart: "Shoulders", equipment: "cable", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0225.gif")
 Exercise.create!(name: "barbell skier", target: "delts", bodyPart: "Shoulders", equipment: "barbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0100.gif")
 Exercise.create!(name: "barbell seated overhead press", target: "delts", bodyPart: "Shoulders", equipment: "barbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0091.gif")
 Exercise.create!(name: "band y-raise", target: "delts", bodyPart: "Shoulders", equipment: "band", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/1017.gif")
 Exercise.create!(name: "band twisting overhead press", target: "delts", bodyPart: "Shoulders", equipment: "band", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/1012.gif")
 Exercise.create!(name: "band standing rear delt row", target: "delts", bodyPart: "Shoulders", equipment: "band", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/1022.gif")
 Exercise.create!(name: "calf push stretch with hands against wall", target: "calves", bodyPart: "Legs", equipment: "body weight", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/1407.gif")
 Exercise.create!(name: "calf stretch with hands against wall", target: "calves", bodyPart: "Legs", equipment: "body weight", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/1377.gif")
 Exercise.create!(name: "calf stretch with rope", target: "calves", bodyPart: "Legs", equipment: "rope", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/1378.gif")
 Exercise.create!(name: "dumbbell seated one leg calf raise - hammer grip", target: "calves", bodyPart: "Legs", equipment: "dumbbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/1380.gif")
 Exercise.create!(name: "exercise ball on the wall calf raise (tennis ball between knees)", target: "calves", bodyPart: "Legs", equipment: "dumbbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/3240.gif")
 Exercise.create!(name: "exercise ball on the wall calf raise (tennis ball between ankles)", target: "calves", bodyPart: "Legs", equipment: "dumbbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/3241.gif")
 Exercise.create!(name: "exercise ball on the wall calf raise", target: "calves", bodyPart: "Legs", equipment: "dumbbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/1382.gif")
 Exercise.create!(name: "hack calf raise", target: "calves", bodyPart: "Legs", equipment: "sled machine", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/1383.gif")
 Exercise.create!(name: "lever calf press ", target: "calves", bodyPart: "Legs", equipment: "leverage machine", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/2289.gif")
 Exercise.create!(name: "lever rotary calf", target: "calves", bodyPart: "Legs", equipment: "leverage machine", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/2315.gif")
 Exercise.create!(name: "run", target: "cardiovascular system", bodyPart: "Cardio", equipment: "body weight", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0685.gif")
 Exercise.create!(name: "dumbbell burpee", target: "cardiovascular system", bodyPart: "Cardio", equipment: "dumbbell", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/1201.gif")
 Exercise.create!(name: "half knee bends", target: "cardiovascular system", bodyPart: "Cardio", equipment: "body weight", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/3221.gif")
 Exercise.create!(name: "high knee against wall", target: "cardiovascular system", bodyPart: "Cardio", equipment: "body weight", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/3636.gif")
 Exercise.create!(name: "jack burpee", target: "cardiovascular system", bodyPart: "Cardio", equipment: "body weight", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/0501.gif")
 Exercise.create!(name: "jack jump ", target: "cardiovascular system", bodyPart: "Cardio", equipment: "body weight", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/3224.gif")
 Exercise.create!(name: "jump rope", target: "cardiovascular system", bodyPart: "Cardio", equipment: "rope", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/2612.gif")
 Exercise.create!(name: "semi squat jump", target: "cardiovascular system", bodyPart: "Cardio", equipment: "body weight", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/3222.gif")
 Exercise.create!(name: "short stride run", target: "cardiovascular system", bodyPart: "Cardio", equipment: "body weight", gifUrl: "http://d205bpvrqc9yn1.cloudfront.net/3656.gif")
    

p "seeding Physical Therapist 🌱"
companies = [
       "United Health",
       "Kaiser Foundation",
       "Anthem Inc.", 
        "Blue Cross Blue Shield",
        "Metropolitan",
       "CIGNA", 
       "Assurant",
       "Allied Insurance", 
       "Allstate", 
       "Aflac"]

# specialty = [
#        "Cardiovascular & Pulmonary Clinical Specialist",
#        "Geriatric Clinical Specialist",
#        "Orthopaedic Clinical Specialist",
#        "Neurology Clinical Specialist",
#         "Pediatric Clinical Specialist",
#        "Oncology Specialist",
#         "Womens Health Specialist",
#         "Electrophysiologic Clinical Specialist",
#         "Sports Clinical Specialist"]

# level = [
#     "PT", 
#    "DPT"]

# 10.times do 
# PhysicalTherapist.create!(
#     email: Faker::Internet.email, 
#     password_digest: "abc", 
#     first_name: Faker::Name.first_name, 
#     last_name: Faker::Name.last_name, 
#     profile_picture: Faker::Avatar.image,
#     clinic_address: Faker::Address.street_address,
#     specialization: specialty.shuffle.slice(0, 1).join(", "),
#     title: level.shuffle.first, 
#     insurances: companies.shuffle.slice(0, 6).join(", "),
#     home_visits:Faker::Boolean.boolean,
#     about_me: Faker::Lorem.paragraph(sentence_count: 2),
#     rating: rand(3.0..5.0).round(2)
#   )
# end 



# change bio use chatgpt to render bio description 
PhysicalTherapist.create!(email: "Jorge@pt.com", password_digest: "abc", first_name: "Jorge", last_name: "Graham", profile_picture: 'https://handsonpt.org/wp-content/uploads/2022/01/Faizal-Hussein-400x450.jpeg.webp', clinic_address: "903 Lexington Ave, New York, NY 10065", specialization: "Cardiovascular & Pulmonary Clinical Specialist", title: "DPT", insurances: companies.shuffle.slice(0, 6).join(", "), home_visits: true, about_me: "As a physical therapist, I am dedicated to helping my patients improve their mobility and manage their pain. I received my Doctor of Physical Therapy degree from the University of Oxford and have been practicing for over 10 years. I have experience working with a wide variety of patient populations, including athletes, seniors, and individuals with neurological conditions. In my free time, I enjoy staying active by running, hiking, and practicing yoga. I am passionate about educating my patients on the importance of maintaining a healthy lifestyle and empowering them to take control of their own recovery.", rating: 5.0, phone_number: "718-533-0969", studies: "University of Oxford")
PhysicalTherapist.create!(email: "Funk@gmail.com", password_digest: "abc", first_name: "Cassaundra", last_name: "Funk", profile_picture: 'https://handsonpt.org/wp-content/uploads/2022/01/Emily-Vandervort-400x450.jpeg.webp', clinic_address: "4875 Broadway, New York, NY 10034", specialization: "Geriatric Clinical Specialist", title: "PT", insurances: companies.shuffle.slice(0, 6).join(", "), home_visits: false, about_me: "I am a physical therapist with a passion for helping people improve their mobility and overall quality of life. I have over 10 years of experience in the field and specialize in orthopedic rehabilitation, sports injury rehabilitation, and geriatric care. I use a personalized, hands-on approach to treatment and am skilled in various manual therapy techniques.", rating: 4.35, phone_number: "646-300-2019", studies: "Columbia Univeisty")
PhysicalTherapist.create!(email: "Cesar@hotmail.com", password_digest: "abc", first_name: "Cesar", last_name: "Rodriguez", profile_picture: 'https://handsonpt.org/wp-content/uploads/2022/01/Alec-Losinski-hands-on-pt-astoria-ny-hicksville-queens-village-bronx-ny-400x450.png.webp', clinic_address: "1150 Park Ave, New York, NY 10128", specialization: "Orthopaedic Clinical Specialist", title: "PT", insurances: companies.shuffle.slice(0, 6).join(", "), home_visits: true, about_me: "As a physical therapist, I specialize in helping patients improve their mobility and overcome injuries. With over 10 years of experience and a Doctor of Physical Therapy degree from Lehman College, I am dedicated to providing personalized, effective treatment to each and every one of my patients.", rating: 4.89, phone_number: "917-878-0476", studies: "CUNY Lehman College")
PhysicalTherapist.create!(email: "RoweRowetheboat@gmail.com", password_digest: "abc", first_name: "Lisa", last_name: "Rowe", profile_picture: 'https://handsonpt.org/wp-content/uploads/2022/03/Dolly-Patel-400x450.png.webp', clinic_address: "4875 Broadway, New York, NY", specialization: "Electrophysiologic Clinical Specialist", title: "DPT", insurances: companies.shuffle.slice(0, 6).join(", "), home_visits: false, about_me: "Meet Lisa, a Physical Therapist with over 10 years of experience helping patients reach their optimal physical health. She received his Doctor of Physical Therapy degree from the University of Southern California and is a member of the American Physical Therapy Association. In her free time, Lisa enjoys hiking and spending time with her family. She is passionate about using evidence-based treatment to empower her patients to take control of their own recovery and achieve their goals. Lisa is dedicated to continuing his education and staying up-to-date on the latest research and techniques in the field. Her compassionate and patient-centered approach makes her a valuable asset to the rehabilitation team.", rating: 4.22, phone_number: "347-949-1003", studies: "University of Southern California")
PhysicalTherapist.create!(email: "Charissa@yahoo.com", password_digest: "abc", first_name: "Charissa", last_name: "Gerhold", profile_picture: 'https://handsonpt.org/wp-content/uploads/2022/01/Van-Nguyen-400x450.jpg.webp', clinic_address: "136 E 57th St, 801, New York, NY 10022", specialization: "Womens Health Specialist", title: "PT", insurances: companies.shuffle.slice(0, 6).join(", "), home_visits: true, about_me: "As a physical therapist, I help people improve their mobility and overall quality of life through personalized treatment plans. I am skilled in a variety of manual therapy techniques and have a passion for helping my patients achieve their goals.", rating: 4.73, phone_number: "917-221-9599", studies: "Vanderbilt University")
PhysicalTherapist.create!(email: "WittingM@pt.com", password_digest: "abc", first_name: "Michelle", last_name: "Witting", profile_picture: 'https://handsonpt.org/wp-content/uploads/2022/02/Liza-Vega-400x450.jpg.webp', clinic_address: "837 Washington Ave, Suite 1B, Bronx, NY 10451", specialization: "Neurology Clinical Specialist", title: "PT", insurances: companies.shuffle.slice(0, 6).join(", "), home_visits: false, about_me: "As a physical therapist, I am passionate about helping my patients improve their mobility and quality of life. I received my Doctor of Physical Therapy degree from the City College of New York and have been practicing for over 10 years. My areas of expertise include orthopedic and sports rehabilitation, as well as treatment of neurodegenerative conditions. I believe in a holistic approach to treatment, incorporating both manual therapy and targeted exercise to achieve optimal results. In my free time, I enjoy staying active by running, cycling, and practicing yoga.", rating: 4.98, phone_number: "347-441-3321", studies: "CUNY City College of New York")
PhysicalTherapist.create!(email: "Kellye123@pt.com", password_digest: "abc", first_name: "Kellye", last_name: "Cummerata", profile_picture: 'https://handsonpt.org/wp-content/uploads/2022/01/Viktoriya-Kulyk-400x450.jpeg.webp', clinic_address: "207 W 79th St, New York, NY 10024", specialization: "Sports Clinical Specialist", title: "DPT", insurances: companies.shuffle.slice(0, 6).join(", "), home_visits: true, about_me: "I am a physical therapist with a Doctor of Physical Therapy degree and over 15 years of experience. I specialize in orthopedic rehabilitation, sports injury rehabilitation, and geriatric care, using personalized, hands-on treatment methods. In my free time, I enjoy staying active and staying up-to-date on the latest in physical therapy.", rating: 4.90, phone_number: "917-260-5531", studies: "New York University")
PhysicalTherapist.create!(email: "itsHoyt@hotmail.com", password_digest: "abc", first_name: "Hoyt", last_name: "Paucek", profile_picture: 'https://handsonpt.org/wp-content/uploads/2022/01/Shoaib-Picture-400x450.jpg.webp', clinic_address: "837 Washington Ave, Suite 1B, Bronx, NY 10451", specialization: "Cardiovascular & Pulmonary Clinical Specialist", title: "DPT", insurances: companies.shuffle.slice(0, 6).join(", "), home_visits: false, about_me: "I am a physical therapist with a Doctor of Physical Therapy degree and over 10 years of experience. My specialties include orthopedic and sports injury rehabilitation, as well as geriatric care. I use a personalized, hands-on approach to treatment and am proficient in various manual therapy techniques. In my personal life, I enjoy staying active through running and yoga and love to read and learn about new developments in physical therapy.", rating: 4.9, phone_number: "646-512-8719", studies: "Harvard University")
PhysicalTherapist.create!(email: "McClure33@gmail.com", password_digest: "abc", first_name: "Marisela", last_name: "McClure", profile_picture: 'https://handsonpt.org/wp-content/uploads/2022/01/Jyoti-Crop-400x450.jpg.webp', clinic_address: "140 East 52nd St, #2E, New York, NY 10022", specialization: "Neurology Clinical Specialist", title: "PT", insurances: companies.shuffle.slice(0, 6).join(", "), home_visits: true, about_me: "As a neurologic physical therapist, I specialize in the evaluation and treatment of individuals with neurological conditions such as stroke, spinal cord injury, and brain injury. With a Doctor of Physical Therapy degree and specialized training in neurologic rehabilitation, I use a holistic approach to treatment and work with my patients to set and achieve their functional goals. Whether it's improving mobility, reducing pain, or increasing independence, I am committed to helping my patients achieve the best possible outcomes.", rating: 3.10, phone_number: "917-306-8421", studies: "Florida University")
PhysicalTherapist.create!(email: "Bobbyeee@pt.com", password_digest: "abc", first_name: "Bobbye", last_name: "Zulauf", profile_picture: 'https://handsonpt.org/wp-content/uploads/2022/02/Bhavesh-Cropped-400x450.jpg.webp', clinic_address: "207 W 79th St, New York, NY 10024", specialization: "Pediatric Clinical Specialist", title: "DPT", insurances: companies.shuffle.slice(0, 6).join(", "), home_visits: true, about_me: "As a pediatric physical therapist, I am dedicated to helping children of all ages achieve their maximum potential and lead active, healthy lives. With a Doctor of Physical Therapy degree and specialized training in pediatric care, I use a child-centered approach to treatment and work closely with families to ensure that each child's unique needs are met. Whether it's helping a child learn to walk, improving their gross motor skills, or managing a chronic condition, I am committed to providing the highest quality care to every patient.", rating: 4.0, phone_number: "516-201-1421", studies: "Boston University")
PhysicalTherapist.create!(email: "johnsonchris@gmail.com", password_digest: "abc", first_name: "chris", last_name: "johnson", profile_picture: 'https://handsonpt.org/wp-content/uploads/2022/02/Gilberto-Diaz-400x450.jpg.webp', clinic_address: "157 E 86th St, New York, NY 10028", specialization: "Sports Clinical Specialist", title: "PT", insurances: companies.shuffle.slice(0, 6).join(", "), home_visits: true, about_me: "As a sports physical therapist, I am committed to helping athletes reach their full potential through personalized rehabilitation and performance enhancement. With a Doctor of Physical Therapy degree and a background in athletics, I understand the demands of high-level sports and use the latest techniques and technologies to get my patients back in the game safely and effectively.", rating: 4.43, phone_number: "347-994-6122", studies: "Butler University")
PhysicalTherapist.create!(email: "williamsonthe3rd@hotmail.com", password_digest: "abc", first_name: "darrel", last_name: "williamson", profile_picture: 'https://handsonpt.org/wp-content/uploads/2022/03/Richard-A-400x450.png.webp', clinic_address: "1384 Broadway, #606, New York, NY 10018", specialization: "Oncology Specialist", title: "DPT", insurances: companies.shuffle.slice(0, 6).join(", "), home_visits: false, about_me: "As an oncology physical therapist, I specialize in working with cancer patients to help them manage the physical side effects of treatment and improve their overall quality of life. With a Doctor of Physical Therapy degree and specialized training in oncology rehabilitation, I use a compassionate, patient-centered approach to treatment and work closely with my patients to set and achieve their rehabilitation goals. Whether it's helping a patient regain strength and mobility after surgery, managing lymphedema, or reducing fatigue, I am dedicated to helping my patients live their lives to the fullest.", rating: 4.65, phone_number: "314-888-7332", studies: "Saint John's University")
PhysicalTherapist.create!(email: "timcookin@apple.com", password_digest: "abc", first_name: "tim", last_name: "cook", profile_picture: 'https://handsonpt.org/wp-content/uploads/2022/01/noel-ortega-jr-hands-on-pt-astoria-ny-hicksville-queens-village-bronx-ny-400x450.png.webp', clinic_address: "12 East 44th St, 5th Floor, New York, NY 10017", specialization: "Geriatric Clinical Specialist", title: "DPT", insurances: companies.shuffle.slice(0, 6).join(", "), home_visits: true, about_me: "As a geriatric physical therapist, I specialize in helping older adults maintain their independence and improve their quality of life through rehabilitation and functional improvement. With a Doctor of Physical Therapy degree and specialized training in geriatric care, I use a personalized approach to treatment and work with my patients to set and achieve their individualized goals. Whether it's helping a patient recover from a fall or manage chronic conditions such as arthritis or Parkinson's disease, I am dedicated to helping my patients live their best lives.", rating: 3.26, phone_number: "347-909-1411", studies: "Sam Houston State Univeristy")

p "seeding appointments 🌱"
Appointment.create!(user_id: 1, physical_therapist_id: 2, claim: "evaluation", scheduled: "12/15/2022 03:30 PM", home_visit: true)
Appointment.create!(user_id: 1, physical_therapist_id: 2, claim: "Follow up", scheduled: "12/30/2022 01:30 PM", home_visit: true)

p "seeding favorites 🌱"

Favorite.create!(user_id: 1, exercise_id: 71)
Favorite.create!(user_id: 1, exercise_id: 66)
Favorite.create!(user_id: 2, exercise_id: 51)
Favorite.create!(user_id: 1, exercise_id: 18)
Favorite.create!(user_id: 2, exercise_id: 33)
Favorite.create!(user_id: 2, exercise_id: 5)

p "seeding Reviews 🌱"
Review.create!(user_id: 1, physical_therapist_id: 1, review_header: "The best Physical Therapist in town!!", users_review: "I suffered a hamstring injury during my performance in Tour De France, I found doctor Graham on PtConnect and the rest was history. He was all in,  he helped me get back on the road in record time! I was expected to be out for a year, 6 months later I have been cleared to compete again, I couldnt be happier! Thank you Dr.Graham!!! ", photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgstZ9LJlTt2zlzinWjWzWCkHFRKm_YS3MEg&usqp=CAU', star_rating: "⭐⭐⭐⭐⭐")