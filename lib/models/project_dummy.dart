class Project{
 final  String title;
  final String author;
  final double donation;
 final String description;
 final String imgurl;
 final double target;

 Project({
   required this.title,
   required this.author,
   required this.donation,
   required this.description,
   required this.imgurl,
   required this.target

 });
}
 List<Project> dummyData = [
    Project(
      title: "Shattering the shame",
      author: "John Doe",
      donation: 500.0,
      description: "Project Guardian Angels is a heartfelt initiative aimed at creating a safe and nurturing environment for every child. We stand united against child abuse, working tirelessly to raise awareness, provide support to survivors, and implement preventive measures. Your contribution can help us build a world where every child is cherished, protected, and given the opportunity to thrive. Join us in being a guardian of hope and healing for the innocent souls who deserve a brighter and safer future than ever before .",
      imgurl: "assets/abuse.jpg",
      target: 2000.0,
    ),
    Project(
      title: "Protect Coral Reefs in Malaysia",
      author: "Jane Smith",
      donation: 300.0,
      description: "Reef Guardians Unite! Our project, Ocean Harmony, is dedicated to protecting and preserving coral reefs, the vibrant and essential ecosystems of our oceans. With your support, we're actively engaged in reef restoration efforts, raising awareness about the importance of coral reefs, and implementing sustainable practices to ensure their longevity. Together, we can be the guardians of these underwater wonders, fostering a healthy marine environment for generations to come. Join us in creating a tide of positive change and safeguarding the beauty and biodiversity of our oceans.",
      imgurl: "assets/bg.jpg",
      target: 10000.0,
    ),
    Project(
      title: "Corona Virus Relief Fund",
      author: "David Johnson",
      donation: 100.0,
      description: """The Unity Against COVID-19 Relief Fund has emerged as a beacon of hope in these challenging times, striving to alleviate the hardships faced by individuals and families affected by the ongoing pandemic. Our ambitious fundraising target of 500,000 is a testament to our commitment to making a meaningful impact. Currently standing at 120,000, every dollar raised contributes directly to the well-being of those in need.
      
      This relief fund has already reached 150 families and 500 individuals across diverse age groups, occupations, and geographical locations. Our support extends beyond financial aid, encompassing crucial areas such as medical assistance, covering COVID-19 testing, treatment, and related expenses. Basic needs like food, hygiene products, and utilities are addressed, ensuring that no one is left vulnerable in the face of this global crisis. Moreover, educational programs and awareness initiatives are funded to empower communities with the knowledge necessary for safeguarding against the virus.
     
      The relief fund is a conduit for impactful change, exemplified through touching stories of assistance. The Johnson family, grappling with job loss, found solace in our financial aid for medical bills and groceries. In another instance, elderly individuals in assisted living facilities were provided with tablets, fostering virtual communication to combat the isolating effects of the pandemic.Corporate sponsorships from esteemed partners like XYZ Corporation and the ABC Foundation underscore the collective effort to combat the pandemic's multifaceted challenges. Events such as the Virtual 5K Run and Online Auction have not only raised funds but have also united communities in a shared commitment to overcoming adversity.As we navigate these uncertain times together, the Unity Against COVID-19 Relief Fund stands as a testament to the resilience and compassion of individuals and organizations alike. With your continued support, we are poised to make a lasting impact and help communities emerge stronger on the other side of this global crisis.""",
      imgurl: "assets/Face masks.jpg",
      target: 500.0,
    ),
    Project(
      title: "Rescue Abandoned Birds",
      author: "Amanda White",
      donation: 700.0,
      description: "Wings of Compassion: Rescuing Abandoned Birds is a heartfelt initiative committed to providing a haven for our feathered friends. Abandoned, injured, or orphaned, these birds deserve a second chance. Our project focuses on rescue, rehabilitation, and release, ensuring that every bird receives the care and support needed to spread its wings once more. With your support, we can build aviaries, provide medical care, and create awareness about responsible bird ownership. Join us in being the voice for these abandoned souls, giving them a chance to soar high and fill the sky with their beauty.",
      imgurl: "assets/parrot.jpeg",
      target: 1500.0,
    ),
    Project(
  title: "Oceans of Change",
  author: "Michael Anderson",
  donation: 450.0,
  description: "Embark on a journey with us as we strive to create 'Oceans of Change.' Our mission is to preserve and protect marine life through innovative and sustainable practices. Your generous donation will fund critical initiatives such as marine conservation, habitat restoration, and scientific research. Together, we can ensure that our oceans thrive for generations to come, providing a healthy and balanced environment for countless species. Join us in making a lasting impact on the future of our oceans and the delicate ecosystems they harbor.",
  imgurl: "assets/ocean.jpg",
  target: 15000.0,
),

Project(
  title: "Hope for Homeless",
  author: "Emily Rodriguez",
  donation: 200.0,
  description: "In the heart of our cities, countless individuals face the harsh reality of homelessness every day. 'Hope for Homeless' is a beacon of compassion, aiming to provide shelter, warmth, and support to those in need. Your contribution will directly impact our efforts to build shelters, offer essential resources, and create pathways for individuals to regain independence. Together, let's bring hope to those who need it most and work towards a future where homelessness is a distant memory.",
  imgurl: "assets/homeless.jpg",
  target: 8000.0,
),

Project(
  title: "Empower Her Dreams",
  author: "Sophia Turner",
  donation: 600.0,
  description: "Every girl deserves the opportunity to dream and achieve her fullest potential. 'Empower Her Dreams' is a commitment to supporting education for underprivileged girls, breaking down barriers that hinder their growth. Your generous support will fund scholarships, educational programs, and mentorship initiatives. Join us in empowering these young minds, providing them with the tools and knowledge to shape a brighter future for themselves and their communities.",
  imgurl: "assets/women.jpg",
  target: 20000.0,
),

Project(
  title: "Feeding Futures",
  author: "Robert Foster",
  donation: 350.0,
  description: "In the fight against hunger, 'Feeding Futures' is a rallying call to create sustainable solutions and nourish communities in need. Your contribution will support initiatives such as community gardens, agricultural training, and food distribution programs. Together, we can break the cycle of hunger and create a future where everyone has access to nutritious food. Join us in feeding not only stomachs but also the potential and dreams of those striving for a brighter tomorrow.",
  imgurl: "assets/hunger.jpg",
  target: 12000.0,
),

Project(
  title: "Paws for a Cause",
  author: "Jessica Walker",
  donation: 180.0,
  description: "Join us on a mission to make a difference in the lives of our furry friends with 'Paws for a Cause.' Our project focuses on rescuing and caring for abandoned animals, providing them with love, shelter, and a chance for a new beginning. Your contribution will directly impact our efforts to operate animal shelters, fund veterinary care, and promote responsible pet ownership. Together, let's create a world where every paw finds a loving home and every animal gets the second chance they deserve.",
  imgurl: "assets/paws.jpg",
  target: 7500.0,
)

  ];