import 'package:book_station/data_layer/models/author.dart';
import 'package:book_station/data_layer/models/book.dart';
import 'package:book_station/data_layer/models/rank_book.dart';
import 'package:book_station/data_layer/models/temp_models/temp_genre.dart';
import 'package:flutter/material.dart';

class BooksCategories {
  List<TempGenre> topGenre = [
    TempGenre(
      genreColor: const Color(0xff8C67AC),
      genreName: "Technology",
      genrePhoto: "assets/images/tech3.jpg",
    ),
    TempGenre(
      genreColor: const Color(0xff1E3264),
      genreName: "Scientific",
      genrePhoto: "assets/images/sc2.jpg",
    ),
    TempGenre(
      genreColor: const Color(0xff477D95),
      genreName: "Financial",
      genrePhoto: "assets/images/fin.jpg",
    ),
    TempGenre(
      genreColor: const Color(0xff0C1D2D),
      genreName: "Fantasy",
      genrePhoto: "assets/images/fan.jpg",
    ),
  ];

  List<TempGenre> allGenre = [
    TempGenre(
      genreColor: const Color(0xff777777),
      genreName: "Art",
      genrePhoto: "assets/images/genre1.jpg",
    ),
    TempGenre(
      genreColor: const Color(0xffE51E31),
      genreName: "Biography",
      genrePhoto: "assets/images/genre2.jpg",
    ),
    TempGenre(
      genreColor: const Color(0xffE8125C),
      genreName: "Business",
      genrePhoto: "assets/images/genre3.jpg",
    ),
    TempGenre(
      genreColor: const Color(0xff1a759f),
      genreName: "Children",
      genrePhoto: "assets/images/genre4.jpg",
    ),
    TempGenre(
      genreColor: const Color(0xff069A8E),
      genreName: "Memoir",
      genrePhoto: "assets/images/genre5.jpg",
    ),
    TempGenre(
      genreColor: const Color(0xff4D4C7D),
      genreName: "Music",
      genrePhoto: "assets/images/genre6.jpg",
    ),
    TempGenre(
      genreColor: const Color(0xff383838),
      genreName: "Poetry",
      genrePhoto: "assets/images/genre7.jpg",
    ),
    TempGenre(
      genreColor: const Color(0xff9E7777),
      genreName: "Psychology",
      genrePhoto: "assets/images/genre8.jpg",
    ),
    TempGenre(
      genreColor: const Color(0xffd62828),
      genreName: "Sport",
      genrePhoto: "assets/images/genre9.jpg",
    ),
    TempGenre(
      genreColor: const Color(0xff1E3264),
      genreName: "Thriller",
      genrePhoto: "assets/images/genre10.jpg",
    ),
    TempGenre(
      genreColor: const Color(0xff6a040f),
      genreName: "Fiction",
      genrePhoto: "assets/images/genre11.jpg",
    ),
    TempGenre(
      genreColor: const Color(0xff936639),
      genreName: "Classic",
      genrePhoto: "assets/images/genre12.jpg",
    ),
    TempGenre(
      genreColor: const Color(0xfffec5bb),
      genreName: "Romance",
      genrePhoto: "assets/images/genre13.jpg",
    ),
    TempGenre(
      genreColor: const Color(0xff005f73),
      genreName: "Self Help",
      genrePhoto: "assets/images/genre14.jpg",
    ),
    TempGenre(
      genreColor: const Color(0xffee9b00),
      genreName: "Religion",
      genrePhoto: "assets/images/genre15.jpg",
    ),
    TempGenre(
      genreColor: const Color(0xffae2012),
      genreName: "Ebooks",
      genrePhoto: "assets/images/genre16.jpg",
    ),
  ];

  Map<String, String> bookCategories = {
    "Technology": "assets/images/techno.jpg",
    "Scientific": "assets/images/scien.jpg",
    "Medical": "assets/images/med3.jpg",
    "Financial": "assets/images/fin.jpg",
    "Historical": "assets/images/his.jpg",
    "Biographies": "assets/images/bio.jpg",
    "Languages": "assets/images/lan.jpg",
    "Literary": "assets/images/dos.jpg",
    "Poetry": "assets/images/pet.jpg",
    "Classic": "assets/images/class.jpg",
    "Detective": "assets/images/det.jpg",
    "Fantasy": "assets/images/fan.jpg",
    "Action": "assets/images/act.jpg",
    "Adventure": "assets/images/adv.jpg",
    "Sport": "assets/images/sport.jpg",
    "Horror": "assets/images/hor.jpg",
    "Romance": "assets/images/rom.jpg",
    "Self-Help": "assets/images/self.jpg",
  };

  List<String> profileGenres = [
    "Technology",
    "Scientific",
    "Medical",
    "Financial",
    "Historical",
  ];

  List<String> userInterestGenres = [
    "Technology",
    "Scientific",
    "Medical",
    "Financial",
    "Historical",
    "Biographies",
    "Languages",
    "Literary",
    "Poetry",
    "Classic",
    "Detective",
    "Fantasy",
    "Action",
    "Adventure",
    "Sport",
    "Horror",
    "Romance",
    "Self-Help",
  ];

  Map<String, String> bookNames = {
    "Two Men, a Murder, and an Unlikely Fight for Justice":
        "assets/images/1.jpg",
    "The Bald Eagle": "assets/images/2.jpg",
    "The Power of Regret": "assets/images/3.jpg",
    "Becoming": "assets/images/4.jpg",
    "A Carnival of Snackery": "assets/images/5.jpg",
    "The Betrayal of Anne Frank": "assets/images/6.jpg",
    "CEO Excellence": "assets/images/7.jpg",
    "Bad Blood": "assets/images/8.jpg",
    "This is Going to Hurt": "assets/images/9.jpg",
  };

  Map<String, String> recommendationBookNames1 = {
    "Two Men, a Murder, and an Unlikely Fight for Justice":
        "assets/images/10.jpg",
    "THe Blade Of Eagle": "assets/images/11.jpg",
    "The Power of Regret": "assets/images/12.jpg",
    "The Betrayal of Anne Frank": "assets/images/13.jpg"
  };
  Map<String, String> recommendationBookNames2 = {
    "This is Going to Hurt": "assets/images/14.jpg",
    "Eleanor and Park": "assets/images/15.jpg",
    "Red Queen": "assets/images/16.jpg",
    "Two Men, a Murder": "assets/images/17.jpg"
  };
  Map<String, String> recommendationBookNames3 = {
    "One Hundred Years of Solitude": "assets/images/19.jpg",
    "The Silent Patient": "assets/images/20.jpg",
    "The Guest List": "assets/images/21.jpg",
    "The Last Thing He Told Me": "assets/images/22.jpg",
    "The Turn of the Key": "assets/images/23.jpg",
    "Local Woman Missing": "assets/images/25.jpg",
    "Long Bright River": "assets/images/24.jpg",
    "1984": "assets/images/18.jpg"
  };
  Map<String, String> readerBooksNames1 = {
    "The Boy from the Woods": "assets/images/26.jpg",
    "This Tender Land": "assets/images/27.jpg",
    "The Book of Lost Friends": "assets/images/28.jpg"
  };
  Map<String, String> readerBooksNames2 = {
    "Strange Situation: A Mother's Journey Into the Science of Attachment":
        "assets/images/29.jpg",
    "Olive Kitteridge": "assets/images/30.jpg",
    "The Lincoln Highway": "assets/images/31.jpg"
  };

  Map<String, String> editorBook1 = {
    "The Truth Project": "assets/images/60.jpg",
    "You Deserve Each Other": "assets/images/61.jpg",
    "Who Will Accompany You": "assets/images/62.jpg",
    "Layla": "assets/images/63.jpg",
  };

  Map<String, String> editorBook2 = {
    "North to Paradise": "assets/images/64.jpg",
    "Scarlet Carnation": "assets/images/65.jpg",
    "A Train to Moscow": "assets/images/66.jpg",
    "The Great Passion": "assets/images/67.jpg",
  };

  Map<String, String> newRelease1 = {
    "Empire of Pain: The Secret History of the Sackler Dynasty":
        "assets/images/73.jpg",
    "Make Your Bed: Little Things That Can Change Your Life...And Maybe the World":
        "assets/images/74.jpg",
    "Burnout: The Secret to Unlocking the Stress Cycle": "assets/images/75.jpg",
    "Money Game: A Wealth Manifestation Guide. Level Up Your Mindset Step-By-Step & Create An Abundant Life":
        "assets/images/76.jpg",
  };

  Map<String, String> newRelease2 = {
    "Fierce Conversations: Achieving Success at Work and in Life One Conversation at a Time":
        "assets/images/77.jpg",
    "Free to Focus: A Total Productivity System to Achieve More by Doing Less":
        "assets/images/78.jpg",
    "I Hear You: The Surprisingly Simple Skill Behind Extraordinary Relationships":
        "assets/images/79.jpg",
    "13 Things Mentally Strong People Don't Do": "assets/images/80.jpg",
  };

  List<Book> books = [
    Book(
        bookName: "Romeo and Juliet",
        pdfUrl: "",
        bookDescription:
            "In Romeo and Juliet, Shakespeare creates a violent world, in which two young people fall in love. It is not simply that their families disapprove; the Montagues and the Capulets are engaged in a blood feud.In this death-filled setting, the movement from love at first sight to the lovers’ final union in death seems almost inevitable. And yet, this play set in an extraordinary world has become the quintessential story of young love. In part because of its exquisite language, it is easy to respond as if it were about all young lovers.",
        bookAuthor: Author(
          authorName: "William Shakespeare",
          authorDescription:
              "William Shakespeare (baptised 26 April 1564) was an English poet and playwright, widely regarded as the greatest writer in the English language and the world's pre-eminent dramatist. He is often called England's national poet and the \"Bard of Avon\" (or simply \"The Bard\"). His surviving works consist of 38 plays, 154 sonnets, two long narrative poems, and several other poems. His plays have been translated into every major living language, and are performed more often than those of any other playwright.",
          authorBooks: [],
          authorPhoto: "assets/images/Shakespeare.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/4.jpg"),
    Book(
      pdfUrl: "",
        bookName: "When Breath Becomes   Air",
        bookDescription:
            "For readers of Atul Gawande, Andrew Solomon, and Anne Lamott, a profoundly moving, exquisitely observed memoir by a young neurosurgeon faced with a terminal cancer diagnosis who attempts to answer the question 'What makes a life worth living?'At the age of thirty-six, on the verge of completing a decade's worth of training as a neurosurgeon, Paul Kalanithi was diagnosed with stage IV lung cancer. One day he was a doctor treating the dying, and the next he was a patient struggling to live. And just like that, the future he and his wife had imagined evaporated. When Breath Becomes Air chronicles Kalanithi's transformation from a naïve medical student possessed as he wrote, \"by the question of what, given that all organisms die, makes a virtuous and meaningful life\" into a neurosurgeon at Stanford working in the brain, the most critical place for human identity, and finally into a patient and new father confronting his own mortality.",
        bookAuthor: Author(
          authorName: "Paul Kalanithi",
          authorDescription:
              "Paul Kalanithi, M.D., was a neurosurgeon and writer. Paul grew up in Kingman, Arizona, before attending Stanford University, from which he graduated in 2000 with a B.A. and M.A. in English Literature and a B.A. in Human Biology. He earned an M.Phil in History and Philosophy of Science and Medicine from the University of Cambridge before attending medical school. In 2007, Paul graduated cum-laude from the Yale School of Medicine, winning the Lewis H. Nahum Prize for outstanding research and membership in the Alpha Omega Alpha medical honor society. He returned to Stanford for residency training in Neurological Surgery and a postdoctoral fellowship in neuroscience, during which he authored over twenty scientific publications and received the American Academy of Neurological Surgery’s highest award for research.",
          authorBooks: [],
          authorPhoto: "assets/images/paul.jpg",
        ),
        bookLikes: 50,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/air.jpg"),
    Book(
        pdfUrl: "",

        bookName: "A Forgery of Roses",
        bookDescription:
            "Myra Whitlock has a gift. One many would kill for.She’s an artist whose portraits alter people’s real-life bodies, a talent she must hide from those who would kidnap, blackmail, and worse in order to control it. Guarding that secret is the only way to keep her younger sister safe now that their parents are gone.But one frigid night, the governor’s wife discovers the truth and threatens to expose Myra if she does not complete a special portrait that would resurrect the governor's dead son. Desperate, Myra ventures to his legendary stone mansion.Once she arrives, however, it becomes clear the boy’s death was no accident. Someone dangerous lurks within these glittering halls. Someone harboring a disturbing obsession with portrait magic.Myra cannot do the painting until she knows what really happened, so she turns to the governor’s older son, a captivating redheaded poet. Together, they delve into the family’s most shadowed affairs, racing to uncover the truth before the secret Myra spent her life concealing makes her the killer’s next victim.",
        bookAuthor: Author(
          authorName: "Jessica S. Olson",
          authorDescription:
              "Paul Kalanithi, M.D., was a neurosurgeon and writer. Paul grew up in Kingman, Arizona, before attending Stanford University, from which he graduated in 2000 with a B.A. and M.A. in English Literature and a B.A. in Human Biology. He earned an M.Phil in History and Philosophy of Science and Medicine from the University of Cambridge before attending medical school. In 2007, Paul graduated cum-laude from the Yale School of Medicine, winning the Lewis H. Nahum Prize for outstanding research and membership in the Alpha Omega Alpha medical honor society. He returned to Stanford for residency training in Neurological Surgery and a postdoctoral fellowship in neuroscience, during which he authored over twenty scientific publications and received the American Academy of Neurological Surgery’s highest award for research.",
          authorBooks: [],
          authorPhoto: "assets/images/auth3.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/39.jpg")
  ];
  List<Book> recentReadBooks = [
    Book(
        pdfUrl: "https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf",
        bookName: "Reminders of Him",
        bookDescription:
            "After serving five years in prison for a tragic mistake, Kenna Rowan returns to the town where it all went wrong, hoping to reunite with her four-year-old daughter. But the bridges Kenna burned are proving impossible to rebuild. Everyone in her daughter’s life is determined to shut Kenna out, no matter how hard she works to prove herself.",
        bookAuthor: Author(
          authorName: "Colleen Hoover",
          authorDescription:
              "International and #1 New York Times bestselling author of romance, YA, thriller, women's fiction and paranormal romance.",
          authorBooks: [],
          authorPhoto: "assets/images/collen.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Romance",
          "Contemporary",
          "Fiction",
          "Contemporary Romance",
        ],
        bookPhoto: "assets/images/remainder.jpg"),
    Book(
        pdfUrl: "http://www.freeclassicebooks.com/misc%20books/CRIME%20AND%20PUNISHMENT.pdf",

        bookName: "The Locked Door",
        bookDescription:
            "Decades later, Nora’s father is spending his life behind bars, and Nora is a successful surgeon with a quiet, solitary existence. Nobody knows her father was a notorious serial killer. And she intends to keep it that way.",
        bookAuthor: Author(
          authorName: "Freida McFadden",
          authorDescription:
              "#1 Amazon bestselling author Freida McFadden is a practicing physician specializing in brain injury who has penned multiple Kindle bestselling psychological thrillers and medical humor novels. She lives with her family and black cat in a centuries-old three-story home overlooking the ocean, with staircases that creak and moan with each step, and nobody could hear you if you scream. Unless you scream really loudly, maybe.",
          authorBooks: [],
          authorPhoto: "assets/images/freida.jpg",
        ),
        bookLikes: 50,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/locked.jpg"),
    Book(
        pdfUrl: "",

        bookName: "Where the Crawdads Sing",
        bookDescription:
            "For years, rumors of the “Marsh Girl” haunted Barkley Cove, a quiet fishing village. Kya Clark is barefoot and wild; unfit for polite society. So in late 1969, when the popular Chase Andrews is found dead, locals immediately suspect her.",
        bookAuthor: Author(
          authorName: "Delia Owens",
          authorDescription:
              "Delia Owens is the co-author of three internationally bestselling nonfiction books about her life as a wildlife scientist in Africa—Cry of the Kalahari, The Eye of the Elephant, and Secrets of the Savanna. She has won the John Burroughs Award for Nature Writing and has been published in Nature, The African Journal of Ecology, and International Wildlife, among many others. She currently lives in Idaho, where she continues her support for the people and wildlife of Zambia. Where the Crawdads Sing is her first novel.",
          authorBooks: [],
          authorPhoto: "assets/images/delia.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/where.jpg"),
    Book(
        pdfUrl: "",

        bookName: "The Nightingale",
        bookDescription:
            "In the quiet village of Carriveau, Vianne Mauriac says good-bye to her husband, Antoine, as he heads for the Front. She doesn’t believe that the Nazis will invade France…but invade they do, in droves of marching soldiers, in caravans of trucks and tanks, in planes that fill the skies and drop bombs upon the innocent. When a German captain requisitions Vianne’s home, she and her daughter must live with the enemy or lose everything. Without food or money or hope, as danger escalates all around them, she is forced to make one impossible choice after another to keep her family alive.",
        bookAuthor: Author(
          authorName: "Kristin Hannah",
          authorDescription:
              "Kristin Hannah is the award-winning and bestselling author of more than 20 novels including the international blockbuster, The Nightingale, which was named Goodreads Best Historical fiction novel for 2015 and won the coveted People's Choice award for best fiction in the same year. Additionally, it was named a Best Book of the Year by Amazon, iTunes, Buzzfeed, the Wall Street Journal, Paste, and The Week. Her novel, The Great Alone, was also voted as Goodreads best historical novel of the year in 2018.",
          authorBooks: [],
          authorPhoto: "assets/images/kris.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Romance",
          "Contemporary",
          "Fiction",
          "Contemporary Romance",
        ],
        bookPhoto: "assets/images/nigt.jpg"),
    Book(
        pdfUrl: "",

        bookName: "Beyond the Highland Mist",
        bookDescription:
            "He was known throughout the kingdom as Hawk, legendary predator of the battlefield and the boudoir. No woman could refuse his touch, but no woman ever stirred his heart—until a vengeful fairy tumbled Adrienne de Simone out of modern-day Seattle and into medieval Scotland. Captive in a century not her own, entirely too bold, too outspoken, she was an irresistible challenge to the sixteenth-century rogue. Coerced into a marriage with Hawk, Adrienne vowed to keep him at arm's length—but his sweet seduction played havoc with her resolve.",
        bookAuthor: Author(
          authorName: "Karen Marie Moning",
          authorDescription:
              "“The only other calling I ever felt was an irrepressible desire to be Captain of my own Starship. I was born in the wrong century and it wasn’t possible, so I chose to explore the universe by writing fiction instead. Books are doors to endless adventure.”",
          authorBooks: [],
          authorPhoto: "assets/images/karen.jpg",
        ),
        bookLikes: 50,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/beyond.jpg"),
  ];
  List<Book> recentReadBooks2 = [
    Book(
        pdfUrl: "",

        bookName: "The Personal Librarian",
        bookDescription:
            "The remarkable, little-known story of Belle da Costa Greene, J. P. Morgan's personal librarian—who became one of the most powerful women in New York despite the dangerous secret she kept in order to make her dreams come true, from New York Times bestselling author Marie Benedict and acclaimed author Victoria Christopher Murray.",
        bookAuthor: Author(
          authorName: "Marie Benedict",
          authorDescription:
              "Marie Benedict is a lawyer with more than ten years' experience as a commercial litigator at two of the country's premier law firms. While practicing as a NYC lawyer, Marie dreamed of a fantastical job unearthing the hidden historical stories of women -- and finally found it when she tried her hand at writing. She embarked on a new, thematically connected series of historical fiction excavating the stories of important, complex and fascinating women from the past with THE OTHER EINSTEIN, which tells the tale of Albert Einstein's first wife, a physicist herself, and the role she might have played in his theories. She then released CARNEGIE'S MAID, the story of a brilliant",
          authorBooks: [],
          authorPhoto: "assets/images/maria.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Romance",
          "Contemporary",
          "Fiction",
          "Contemporary Romance",
        ],
        bookPhoto: "assets/images/personal.jpg"),
    Book(
        pdfUrl: "",

        bookName: "The Second Mrs. Astor",
        bookDescription:
            "Perfect for fans of Jennifer Chiaverini and Marie Benedict, this riveting novel takes you inside the scandalous courtship and catastrophic honeymoon aboard the Titanic of the most famous couple of their time—John Jacob Astor and Madeleine Force. Told in rich detail, this novel of sweeping historical fiction will stay with readers long after turning the last page.",
        bookAuthor: Author(
          authorName: "Shana Abe",
          authorDescription:
              "Shana Abé is the award-winning, New York Times, USA Today and Wall Street Journal bestselling author of seventeen books, including the acclaimed Drákon Series and the Sweetest Dark Series.",
          authorBooks: [],
          authorPhoto: "assets/images/shana.jpg",
        ),
        bookLikes: 50,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/second.jpg"),
    Book(
        pdfUrl: "",

        bookName: "The Magnificent Lives of Marjorie Post",
        bookDescription:
            "So begins another average evening for Marjorie Merriweather Post. Presidents have come and gone, but she has hosted them all. Growing up in the modest farmlands of Battle Creek, Michigan, Marjorie was inspired by a few simple rules: always think for yourself, never take success for granted, and work hard—even when deemed American royalty, even while covered in imperial diamonds. Marjorie had an insatiable drive to live and love and to give more than she got. From crawling through Moscow warehouses to rescue the Tsar's treasures to outrunning the Nazis in London, from serving the homeless of the Great Depression to entertaining Roosevelts, Kennedys, and Hollywood's biggest stars, Marjorie Merriweather Post lived an epic life few could imagine.",
        bookAuthor: Author(
          authorName: "Allison Pataki",
          authorDescription:
              "ALLISON PATAKI is the NYTimes Bestselling author of THE TRAITOR'S WIFE, THE ACCIDENTAL EMPRESS, SISI:EMPRESS ON HER OWN, WHERE THE LIGHT FALLS, and the memoir, BEAUTY IN THE BROKEN PLACES.Her work has been translated into more than a dozen languages, has been featured on The TODAY Show, The NY Times, The Huffington Post, USA Today, FOX News, Morning Joe, and more.",
          authorBooks: [],
          authorPhoto: "assets/images/alison.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/mag.jpg"),
    Book(
        pdfUrl: "",

        bookName: "The Lobotomist's Wife",
        bookDescription:
            "Since her brother took his life after WWI, Ruth Emeraldine has had one goal: to help those suffering from mental illness. Then she falls in love with charismatic Robert Apter—a brilliant doctor championing a radical new treatment, the lobotomy. Ruth believes in it as a miracle treatment and in Robert as its genius pioneer. But as her husband spirals into deluded megalomania, Ruth can’t ignore her growing suspicions. Robert is operating on patients recklessly, often with horrific results. And a vulnerable young mother, Margaret Baxter, is poised to be his next victim.",
        bookAuthor: Author(
          authorName: "Samantha Greene Woodruff",
          authorDescription:
              "Samantha Greene Woodruff has a BA in history from Wesleyan University and an MBA from the NYU Stern School of Business. She spent most of her career telling stories to executives at MTV Networks as the senior vice president of strategy and business development and, subsequently, audience research for the Nickelodeon Kids & Family Group. After leaving corporate life, she pursued her varied passions, teaching yoga, cooking, and taking classes at the Writing Institute at Sarah Lawrence College. It was here that she combined her multifaceted background with her wild imagination and passion for history, reading, and writing. The Lobotomist’s Wife is her first historical",
          authorBooks: [],
          authorPhoto: "assets/images/samantha.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Romance",
          "Contemporary",
          "Fiction",
          "Contemporary Romance",
        ],
        bookPhoto: "assets/images/lob.jpg"),
    Book(
        pdfUrl: "",

        bookName: "Under A Sky of Memories",
        bookDescription:
            "Sicily, 1943. Three American women, all nurses in the Medical Air Evacuation Transport Squadron, are determined to do all they can for their country. Vita is fun-loving, Dot shy and sweet-natured, and Evelyn practical and determined, but for all their differences, a life of military service pulls the three together as firm friends.",
        bookAuthor: Author(
          authorName: "Soraya M. Lane",
          authorDescription:
              "Soraya loves spending her days thinking up characters for books, and her home is a constant source of inspiration. She lives with her own real life hero and two sons on a small farm in New Zealand, surrounded by animals and with an office overlooking a field where their horses graze.",
          authorBooks: [],
          authorPhoto: "assets/images/sorrya.jpg",
        ),
        bookLikes: 50,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/under.jpg"),
  ];
  List<Book> favoriteBook = [
    Book(
        pdfUrl: "",

        bookName: "Her Hidden Genius",
        bookDescription:
            "Rosalind Franklin has always been an outsider―brilliant, but different. Whether working at the laboratory she adored in Paris or toiling at a university in London, she feels closest to the science, those unchanging laws of physics and chemistry that guide her experiments. When she is assigned to work on DNA, she believes she can unearth its secrets",
        bookAuthor: Author(
          authorName: "Marie Benedict",
          authorDescription:
              "Marie Benedict is a lawyer with more than ten years' experience as a commercial litigator at two of the country's premier law firms. While practicing as a NYC lawyer, Marie dreamed of a fantastical job unearthing the hidden historical stories of women -- and finally found it when she tried her hand at writing. She embarked on a new, thematically connected series of historical fiction excavating the stories of important, complex and fascinating women from the past with THE OTHER EINSTEIN, which tells the tale of Albert Einstein's first wife, a physicist herself, and the role she might have played in his theories. She then released CARNEGIE'S MAID, the story of a brilliant",
          authorBooks: [],
          authorPhoto: "assets/images/maria.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Romance",
          "Contemporary",
          "Fiction",
          "Contemporary Romance",
        ],
        bookPhoto: "assets/images/her.jpg"),
    Book(
        pdfUrl: "",

        bookName: "When the Stars Go Dark",
        bookDescription:
            "Anna Hart is a missing persons detective in San Francisco. When tragedy strikes her personal life, Anna, desperate and numb, flees to the Northern California village of Mendocino to grieve. She lived there as a child with her beloved foster parents, and now she believes it might be the only place left for her. Yet the day she arrives, she learns a local teenage girl has gone missing. The crime feels frighteningly reminiscent of the most crucial time in Anna's childhood, when the unsolved murder of a young girl touched Mendocino and changed the community forever.",
        bookAuthor: Author(
          authorName: "Paula McLain",
          authorDescription:
              "Paula McLain is the author of the New York Times and internationally bestselling novels, The Paris Wife, Circling the Sun and Love and Ruin. Now she introduces When the Stars Go Dark (April 13, 2021), an atmospheric novel of intertwined destinies and heart-wrenching suspense. She received an MFA in poetry from the University of Michigan in 1996, and is also the author of two collections of poetry, the memoir Like Family: Growing Up in Other People's Houses, and the debut novel, A Ticket to Ride. Her work has has appeared in The New York Times, Real Simple, Town & Country, The Guardian, Huffington Post, Good Housekeeping, and elsewhere. She lives with her family in Cleveland, Ohio",
          authorBooks: [],
          authorPhoto: "assets/images/paula.jpg",
        ),
        bookLikes: 50,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/godark.jpg"),
    Book(
        pdfUrl: "",

        bookName: "Sunflower Sisters",
        bookDescription:
            "Lilac Girls introduced readers to Caroline Ferriday, an American philanthropist who helped young girls released from Ravensbruck concentration camp. Now, in Sunflower Sisters, Kelly tells the story of her ancestor Georgeanna Woolsey, a Union nurse who joins the war effort during the Civil War, and how her calling leads her to cross paths with Jemma, a young enslaved girl who is sold off and conscripted into the army, and Ann-May Wilson, a southern plantation mistress whose husband enlists.",
        bookAuthor: Author(
          authorName: "Martha Hall Kelly",
          authorDescription:
              "Martha grew up in Massachusetts and now splits her time between Connecticut and New York City. She worked as an advertising copywriter for many years and raised three splendid children, while researching and writing Lilac Girls, her first novel. She has loved writing the other two books about Caroline's family, Lost Roses, which features Caroline's mother during WWI and Sunflower Sisters, a Civil War novel due out March 30, 2021. You'll find more info about the incredible, true stories behind both books at her ",
          authorBooks: [],
          authorPhoto: "assets/images/martha.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/sunflow.jpg"),
    Book(
        pdfUrl: "",

        bookName: "The Book of Longings",
        bookDescription:
            "Raised in a wealthy family in Sepphoris with ties to the ruler of Galilee, Ana is rebellious and ambitious, a relentless seeker with a brilliant, curious mind and a daring spirit. She yearns for a pursuit worthy of her life, but finds no outlet for her considerable talents. Defying the expectations placed on women, she engages in furtive scholarly pursuits and writes secret narratives about neglected and silenced women. When she meets the eighteen-year-old Jesus, each is drawn to and enriched by the other’s spiritual and philosophical ideas. He becomes a floodgate for her intellect, but also the awakener of her heart.",
        bookAuthor: Author(
          authorName: "Sue Monk Kidd",
          authorDescription:
              "SUE MONK KIDD was raised in the small town of Sylvester, Georgia. She graduated from Texas Christian University in 1970 and later took creative writing courses at Emory University, as well as studying at Sewanee, Bread Loaf, and other writers’ conferences. In her forties, Kidd turned her attention to writing fiction, winning the South Carolina Fellowship in Literature and the 1996 Poets & Writers Exchange Program in Fiction.",
          authorBooks: [],
          authorPhoto: "assets/images/sue.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Romance",
          "Contemporary",
          "Fiction",
          "Contemporary Romance",
        ],
        bookPhoto: "assets/images/longings.jpg"),
    Book(
        pdfUrl: "",

        bookName: "Find Me",
        bookDescription:
            "No novel in recent memory has spoken more movingly to contemporary readers about the nature of love than André Aciman’s haunting Call Me by Your Name. First published in 2007, it was hailed as “a love letter, an invocation . . . an exceptionally beautiful book” (Stacey D’Erasmo, The New York Times Book Review). Nearly three quarters of a million copies have been sold, and the book became a much-loved, Academy Award–winning film starring Timothée Chalamet as the young Elio and Armie Hammer as Oliver, the graduate student with whom he falls in love.",
        bookAuthor: Author(
          authorName: "André Aciman",
          authorDescription:
              "André Aciman was born in Alexandria, Egypt and is an American memoirist, essayist, novelist, and scholar of seventeenth-century literature. He has also written many essays and reviews on Marcel Proust. His work has appeared in The New Yorker, The New York Review of Books, The New York Times, The Paris Review, The New Republic, Condé Nast Traveler as well as in many volumes of The Best American Essays. Aciman received his Ph.D. in Comparative Literature from Harvard University, has taught at Princeton and Bard and is Distinguished Professor of Comparative Literature at The CUNY Graduate Center. He is currently chair of the Ph. D. Program in Comparative Literature and founder and director of The Writers' Institute at the Graduate Center.",
          authorBooks: [],
          authorPhoto: "assets/images/Andre.jpg",
        ),
        bookLikes: 50,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/findme.jpg"),
  ];

  List<Book> forYou = [
    Book(
        pdfUrl: "",

        bookName: "Firekeeper's Daughter",
        bookDescription:
            "Eighteen-year-old Daunis Fontaine has never quite fit in, both in her hometown and on the nearby Ojibwe reservation. She dreams of a fresh start at college, but when family tragedy strikes, Daunis puts her future on hold to look after her fragile mother. The only bright spot is meeting Jamie, the charming new recruit on her brother Levi’s hockey team.",
        bookAuthor: Author(
          authorName: "Angeline Boulley",
          authorDescription:
              "Angeline Boulley, an enrolled member of the Sault Ste. Marie Tribe of Chippewa Indians, is a storyteller who writes about her Ojibwe community in Michigan's Upper Peninsula. She gained attention from the We Need Diverse Books Mentorship Program. Angeline was the former Director of the Office of Indian Education at the U.S. Department of Education. Her agent is Faye Bender at The Book Group. Firekeeper's Daughter has been optioned for a Netflix series by the Obamas' Higher Ground production company",
          authorBooks: [],
          authorPhoto: "assets/images/Angeline.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Romance",
          "Contemporary",
          "Fiction",
          "Contemporary Romance",
        ],
        bookPhoto: "assets/images/fred.jpg"),
    Book(
        pdfUrl: "",

        bookName: "Where Dreams Descend",
        bookDescription:
            "In a city covered in ice and ruin, a group of magicians face off in a daring game of magical feats to find the next headliner of the Conquering Circus, only to find themselves under the threat of an unseen danger striking behind the scenes.",
        bookAuthor: Author(
          authorName: "Janella Angeles",
          authorDescription:
              "Janella Angeles is a Filipino-American author who got her start in writing through consuming glorious amounts of fanfiction at a young age–which eventually led to penning a few of her own, and later on, creating original stories from her imagination. A lifelong lover of books, she’s lucky enough to be working in the business of publishing them on top of writing them. She currently resides in Massachusetts, where she’s most likely to be found listening to musicals on repeat and daydreaming too much for her own good. She is represented by Thao Le of the Sandra Dijkstra Literary Agency. WHERE DREAMS DESCEND, Book 1 in her debut fantasy Kingdom of Cards duology, will be out June 2, 2020 from Wednesday Books.",
          authorBooks: [],
          authorPhoto: "assets/images/Janella.jpg",
        ),
        bookLikes: 50,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/dreams.jpg"),
    Book(
        pdfUrl: "",

        bookName: "Aristotle and Dante Dive into the Waters of the World",
        bookDescription:
            "n Aristotle and Dante Discover the Secrets of the Universe, two boys in a border town fell in love. Now, they must discover what it means to stay in love and build a relationship in a world that seems to challenge their very existence.",
        bookAuthor: Author(
          authorName: "Benjamin Alire Sáenz",
          authorDescription:
              "He was born at Old Picacho, New Mexico, the fourth of seven children, and was raised on a small farm near Mesilla, New Mexico. He graduated from Las Cruces High School in 1972. That fall, he entered St. Thomas Seminary in Denver, Colorado where he received a B.A. degree in Humanities and Philosophy in 1977. He studied Theology at the University of Louvain in Leuven, Belgium from 1977 to 1981. He was a priest for a few years in El Paso, Texas before leaving the order.",
          authorBooks: [],
          authorPhoto: "assets/images/ben.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/aristotle.jpg"),
    Book(
        pdfUrl: "",

        bookName: "The Friend Scheme",
        bookDescription:
            "High schooler Matt's father is rich, powerful, and seemingly untouchable—a criminal with high hopes that his son will follow in his footsteps. Matt's older brother Luke seems poised to do just that, with a bevy of hot girls in tow. But Matt has other ambitions—and attractions.",
        bookAuthor: Author(
          authorName: "Cale Dietrich",
          authorDescription:
              "Cale Dietrich is the award-winning and bestselling author of more than 20 novels including the international blockbuster, The Nightingale, which was named Goodreads Best Historical fiction novel for 2015 and won the coveted People's Choice award for best fiction in the same year. Additionally, it was named a Best Book of the Year by Amazon, iTunes, Buzzfeed, the Wall Street Journal, Paste, and The Week. Her novel, The Great Alone, was also voted as Goodreads best historical novel of the year in 2018.",
          authorBooks: [],
          authorPhoto: "assets/images/cale.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Romance",
          "Contemporary",
          "Fiction",
          "Contemporary Romance",
        ],
        bookPhoto: "assets/images/schema.jpg"),
  ];

  List<Book> forYou2 = [

    Book(
        pdfUrl: "",

        bookName: "The Queen of Nothing",
        bookDescription:
            "Power is much easier to acquire than it is to hold onto. Jude learned this lesson when she released her control over the wicked king, Cardan, in exchange for immeasurable power.",
        bookAuthor: Author(
          authorName: "Holly Black",
          authorDescription:
              "Holly Black is the #1 New York Times bestselling author of over thirty fantasy novels for kids and teens. She has been a finalist for an Eisner Award and the Lodestar Award, and the recipient of the Mythopoeic Award, a Nebula, and a Newbery Honor. Her books have been translated into 32 languages worldwide and adapted for film. She currently lives in New England with her husband and son in a house with a secret library.",
          authorBooks: [],
          authorPhoto: "assets/images/holly.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Romance",
          "Contemporary",
          "Fiction",
          "Contemporary Romance",
        ],
        bookPhoto: "assets/images/queen.jpg"),
    Book(
        pdfUrl: "",

        bookName: "The Last Confessions of Mara Dyer and Noah Shaw",
        bookDescription:
            "In this apocalyptic finale to the Shaw Confessions, the companion series to the New York Times bestselling Mara Dyer novels, alliances will be tested, hearts will be broken, and no one will be left unscarred. Noah’s confessions end here",
        bookAuthor: Author(
          authorName: "Michelle Hodkin",
          authorDescription:
              "Michelle Hodkin is the author of the Mara Dyer Trilogy, which was a New York Times, USA Today, and Publishers Weekly bestselling series. The trilogy, which includes The Unbecoming of Mara Dyer, The Evolution of Mara Dyer, and The Retribution of Mara Dyer, was described as “haunting and dreamlike” by Cassandra Clare and “darkly funny, deliciously creepy, and genuinely thoughtful” by Veronica Roth. Lev Grossman has called Hodkin “One of the greatest talents in Young Adult fiction.” The novels were praised by Romantic Times, MTV’s Hollywood Crush, and the Los Angeles Times, and books from the series appeared on several state reading lists. Additionally, The Retribution of Mara Dyer was selected as one of TIME.com’s Top 10 YA Books of 2014.",
          authorBooks: [],
          authorPhoto: "assets/images/mesh.jpg",
        ),
        bookLikes: 50,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/mara.jpg"),
    Book(
        pdfUrl: "",
        bookName: "Crier's War",
        bookDescription:
            "After the War of Kinds ravaged the kingdom of Rabu, the Automae, Designed to be the playthings of royals, took over the estates of their owners and bent the human race to their will.Now, Ayla, a human servant rising the ranks at the House of the Sovereign, dreams of avenging the death of her family… by killing the Sovereign’s daughter, Lady Crier. Crier, who was Made to be beautiful, to be flawless. And to take over the work of her father.Crier had been preparing to do just that—to inherit her father’s rule over the land. But that was before she was betrothed to Scyre Kinok, who seems to have a thousand secrets. That was before she discovered her father isn’t as benevolent as she thought. That was before she met Ayla.",
        bookAuthor: Author(
          authorName: "Nina Varela",
          authorDescription:
              "she was born at Old Picacho, New Mexico, the fourth of seven children, and was raised on a small farm near Mesilla, New Mexico. He graduated from Las Cruces High School in 1972. That fall, he entered St. Thomas Seminary in Denver, Colorado where he received a B.A. degree in Humanities and Philosophy in 1977. He studied Theology at the University of Louvain in Leuven, Belgium from 1977 to 1981. He was a priest for a few years in El Paso, Texas before leaving the order.",
          authorBooks: [],
          authorPhoto: "assets/images/nina.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/war.jpg"),
    Book(
        pdfUrl: "",
        bookName: "Tryst Six Venom",
        bookDescription:
            "Marymount girls are good girls. We’re chaste, we’re untouched, and even if we weren’t, no one would know, because we keep our mouths shut.Not that I have anything to share anyway. I never let guys go too far. I’m behaved.Beautiful, smart, talented, popular, my skirt’s always pressed, and I never have a hair out of place. I own the hallways, walking tall on Monday and dropping to my knees like the good Catholic girl I am on Sunday.",
        bookAuthor: Author(
          authorName: "Penelope Douglas",
          authorDescription:
              "Penelope Douglas is a New York Times, USA Today, and Wall Street Journal bestselling author. Their books have been translated into nineteen languages and include The Fall Away Series, The Devil’s Night Series, and the stand-alones, Misconduct, Punk 57, Birthday Girl, Credence, and Tryst Six Venom. Please look for The Hellbent Series and Motel, coming next.",
          authorBooks: [],
          authorPhoto: "assets/images/pene.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Romance",
          "Contemporary",
          "Fiction",
          "Contemporary Romance",
        ],
        bookPhoto: "assets/images/venom.jpg"),
  ];

  List<Book> readingPreference = [
    Book(
        pdfUrl: "",
        bookName: "The Me You Love In The Dark",
        bookDescription:
            "An artist named Ro retreats from the grind of the city to an old house in a small town. She hopes for solace and inspiration, but the muse she finds within is not what she expected.",
        bookAuthor: Author(
          authorName: "Skottie Young",
          authorDescription:
              "Skottie Young has been an illustrator and cartoonist for over ten years working for entertainment and publishing companies such Marvel, Warner Bros., Image, Upper Deck, Mattel, and many more.He is currently illustrating the New York Times Best Selling and Eisner Award Nominated adaptions of L. Frank Baum's OZ novels with writer Eric Shanower. The series has gained acclaim from both fans and critics.",
          authorBooks: [],
          authorPhoto: "assets/images/skot.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Romance",
          "Contemporary",
          "Fiction",
          "Contemporary Romance",
        ],
        bookPhoto: "assets/images/loveintheDark.jpg"),
    Book(
        pdfUrl: "",
        bookName: "Lore Olympus: Volume One",
        bookDescription:
            "Scandalous gossip, wild parties, and forbidden love—witness what the gods do after dark in this stylish and contemporary reimagining of one of mythology’s most well-known stories from creator Rachel Smythe. Featuring a brand-new, exclusive short story, Smythe’s original Eisner-nominated web-comic Lore Olympus brings the Greek Pantheon into the modern age with this sharply perceptive and romantic graphic novel.",
        bookAuthor: Author(
          authorName: "Rachel Smythe",
          authorDescription:
              "Rachel Smythe is the creator of the Eisner-nominated Lore Olympus, published via Webtoon.",
          authorBooks: [],
          authorPhoto: "assets/images/rech.jpg",
        ),
        bookLikes: 50,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/lora.jpg"),
    Book(
        pdfUrl: "",
        bookName: "Brimstone and Roses",
        bookDescription:
            "Bea is over her ex. Absolutely, completely, over her... except that she's not. When Bea finds out that her ex is also attending her sister's wedding, Bea does what any logical person would do and summons an incredibly hot, sarcastic demon to be her date. But demons are tricky, and now hers won't leave her alone.",
        bookAuthor: Author(
          authorName: "Mei Rothschild",
          authorDescription:
              "Mei Rothschild is a New York Times, USA Today, and Wall Street Journal bestselling author. Their books have been translated into nineteen languages and include The Fall Away Series, The Devil’s Night Series, and the stand-alones, Misconduct, Punk 57, Birthday Girl, Credence, and Tryst Six Venom. Please look for The Hellbent Series and Motel, coming next.",
          authorBooks: [],
          authorPhoto: "assets/images/buffer.png",
        ),
        bookLikes: 100,
        bookCategories: [
          "Romance",
          "Contemporary",
          "Fiction",
          "Contemporary Romance",
        ],
        bookPhoto: "assets/images/brin.jpg"),
    Book(
        pdfUrl: "",
        bookName: "Moon Knight, Vol. 2: Reincarnations",
        bookDescription:
            "Meet the many men inside Moon Knight's head as the focus shifts to his various incarnations! Marc Spector broke his body to escape the prison Khonshu built for his mind...but what if he's still trapped? Steven Grant awoke in New York City, ready to produce Marvel's next box-office smash - is he losing his mind, or will Moon Knight: The Movie be a blockbuster? And Jake Lockley",
        bookAuthor: Author(
          authorName: "Jeff Lemire",
          authorDescription:
              "Jeff Lemire is a New York Times bestselling and award winning author, and creator of the acclaimed graphic novels Sweet Tooth, Essex County, The Underwater Welder, Trillium, Plutona, Black Hammer, Descender, Royal City, and Gideon Falls. His upcoming projects include a host of series and original graphic novels, including the fantasy series Ascender with Dustin Nguyen.",
          authorBooks: [],
          authorPhoto: "assets/images/jeff.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/moonKnight.jpg"),
    Book(
        pdfUrl: "",
        bookName: "Batman: The Killing Joke",
        bookDescription:
            "For the first time the Joker's origin is revealed in this tale of insanity and human perseverance. Looking to prove that any man can be pushed past his breaking point and go mad, the Joker attempts to drive Commissioner Gordon insane.",
        bookAuthor: Author(
          authorName: "Alan Moore",
          authorDescription:
              "Alan Moore is an English writer most famous for his influential work in comics, including the acclaimed graphic novels Watchmen, V for Vendetta and From Hell. He has also written a novel, Voice of the Fire, and performs \"workings\" (one-off performance art/spoken word pieces) with The Moon and Serpent Grand Egyptian Theatre of Marvels, some of which have been released on CD.",
          authorBooks: [],
          authorPhoto: "assets/images/alan.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/batman.jpg"),
    Book(
        pdfUrl: "",
        bookName: "Crier's War",
        bookDescription:
            "After the War of Kinds ravaged the kingdom of Rabu, the Automae, Designed to be the playthings of royals, took over the estates of their owners and bent the human race to their will.Now, Ayla, a human servant rising the ranks at the House of the Sovereign, dreams of avenging the death of her family… by killing the Sovereign’s daughter, Lady Crier. Crier, who was Made to be beautiful, to be flawless. And to take over the work of her father.Crier had been preparing to do just that—to inherit her father’s rule over the land. But that was before she was betrothed to Scyre Kinok, who seems to have a thousand secrets. That was before she discovered her father isn’t as benevolent as she thought. That was before she met Ayla.",
        bookAuthor: Author(
          authorName: "Nina Varela",
          authorDescription:
              "she was born at Old Picacho, New Mexico, the fourth of seven children, and was raised on a small farm near Mesilla, New Mexico. He graduated from Las Cruces High School in 1972. That fall, he entered St. Thomas Seminary in Denver, Colorado where he received a B.A. degree in Humanities and Philosophy in 1977. He studied Theology at the University of Louvain in Leuven, Belgium from 1977 to 1981. He was a priest for a few years in El Paso, Texas before leaving the order.",
          authorBooks: [],
          authorPhoto: "assets/images/nina.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/war.jpg"),
  ];

  List<Book> readerPicks1 = [
    Book(
        pdfUrl: "",
        bookName:
            "The Come Back Culture: 10 Business Practices That Create Lifelong Customers",
        bookDescription:
            "Everything equal, customers choose whether they will return based on the feeling they get when interacting with your brand. Research reveals that a high number of customers will go through the trouble of switching brands due to a bad customer experience. Great businesses know how to make a customer feel seen, understood, and valued. Those satisfied customers trust you more",
        bookAuthor: Author(
          authorName: "Jason Young",
          authorDescription:
              "Jason Young has been an illustrator and cartoonist for over ten years working for entertainment and publishing companies such Marvel, Warner Bros., Image, Upper Deck, Mattel, and many more.He is currently illustrating the New York Times Best Selling and Eisner Award Nominated adaptions of L. Frank Baum's OZ novels with writer Eric Shanower. The series has gained acclaim from both fans and critics.",
          authorBooks: [],
          authorPhoto: "assets/images/buffer.png",
        ),
        bookLikes: 100,
        bookCategories: [
          "Romance",
          "Contemporary",
          "Fiction",
          "Contemporary Romance",
        ],
        bookPhoto: "assets/images/theCome.jpg"),
    Book(
        pdfUrl: "",
        bookName: "Can't Hurt Me: Master Your Mind and Defy the Odds",
        bookDescription:
            "For David Goggins, childhood was a nightmare - poverty, prejudice, and physical abuse colored his days and haunted his nights. But through self-discipline, mental toughness, and hard work, Goggins transformed himself from a depressed, overweight young man with no future into a U.S. Armed Forces icon and one of the world's top endurance athletes. The only man in history",
        bookAuthor: Author(
          authorName: "David Goggins",
          authorDescription:
              "David Goggins is the creator of the Eisner-nominated Lore Olympus, published via Webtoon.",
          authorBooks: [],
          authorPhoto: "assets/images/david.jpg",
        ),
        bookLikes: 50,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/cantHurt.jpg"),
    Book(
        pdfUrl: "",
        bookName: "Empire of Pain: The Secret History of the Sackler Dynasty",
        bookDescription:
            "The Sackler name adorns the walls of many storied institutions: Harvard, the Metropolitan Museum of Art, Oxford, the Louvre. They are one of the richest families in the world, known for their lavish donations to the arts and sciences. The source of the family fortune was vague, however, until it emerged that the Sacklers were responsible for making and marketing OxyContin, a blockbuster painkiller that was a catalyst for the opioid crisis.",
        bookAuthor: Author(
          authorName: "Patrick Radden Keefe",
          authorDescription:
              "Patrick Radden Keefe is a staff writer at The New Yorker and the author of The Snakehead and Chatter. His work has also appeared in The New York Times Magazine, Slate, New York, and The New York Review of Books. He received the 2014 National Magazine Award for Feature Writing, for his story \"A Loaded Gun,\" was a finalist for the National Magazine Award for Reporting in 2015 and 2016, and is also the recipient of an Eric and Wendy Schmidt Fellowship at the New America Foundation and a Guggenheim Fellowship.",
          authorBooks: [],
          authorPhoto: "assets/images/patric.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Romance",
          "Contemporary",
          "Fiction",
          "Contemporary Romance",
        ],
        bookPhoto: "assets/images/empire.jpg"),
  ];

  List<Book> readerPicks2 = [
    Book(
        pdfUrl: "",
        bookName: "Vampire Chronicles",
        bookDescription:
            "Ara and David fell in love under tragic circumstances, the emotions magnified by grief until one could no longer live without the other. But after David confesses that he’s a vampire, Ara’s recent brush with death leaves her wondering if she ever wants to see him again. In just two weeks she is expected to either leave her life behind for an eternity of murder in a cult-like society, or say goodbye to David. But when a decades-old feud between brothers erupts, Ara becomes the pawn in a sick, twisted game of life and death—one that forces her to face the reality of the choice she made.",
        bookAuthor: Author(
          authorName: "Kia Carrington-Russell",
          authorDescription:
              "Raised in the Darling Downs Region in Queensland, Australia, Kia Carrington-Russell, began writing as an angsty teenager, finding a passion for exploring creative realities and world building at fifteen. After graduating high school she decided to pursue a career in freelance journalism, and quickly amended that dream with something that made her heart beat faster and her mind race--fiction. With fresh eyes she went over her first manuscript, \"Possession of my Soul\" and began her publishing journey in 20",
          authorBooks: [],
          authorPhoto: "assets/images/kia.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/vampire.jpg"),
    Book(
        pdfUrl: "",
        bookName:
            "The Woman They Could Not Silence: One Woman, Her Incredible Fight for Freedom, and the Men Who Tried to Make Her Disappear",
        bookDescription:
            "1860: As the clash between the states rolls slowly to a boil, Elizabeth Packard, housewife and mother of six, is facing her own battle. The enemy sits across the table and sleeps in the next room. Her husband of twenty-one years is plotting against her because he feels increasingly threatened - by Elizabeth's intellect, independence, and unwillingness to stifle her own thoughts. So Theophilus makes a plan to put his wife back in her place. One summer morning, he has her committed to an insane asylum.",
        bookAuthor: Author(
          authorName: "Kate Moore",
          authorDescription:
              "Thanks for your question! My background is in book publishing; I worked in-house as an editor for twelve years, most recently as an editorial director at Penguin Random House, before going freelance as an editor and author in 2014. I discovered the girls' story through directing These Shining Lives by Melanie Marnich, which dramatizes the Ottawa dial-painters' experiences. The story really resonated with me. Through my research to make my theatre production authentic, I realized no book existed that told the story from the girls' perspective. I felt passionately about ensuring they were remembered and the individual women celebrated, which is how the book came to be",
          authorBooks: [],
          authorPhoto: "assets/images/kate.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/womenT.jpg"),
    Book(
        pdfUrl: "",
        bookName: "The House on Vesper Sands",
        bookDescription:
            "London, 1893: high up in a house on a dark, snowy night, a lone seamstress stands by a window. So begins the swirling, serpentine world of Paraic O’Donnell’s Victorian-inspired mystery, the story of a city cloaked in shadow, but burning with questions: why does the seamstress jump from the window? Why is a cryptic message stitched into her skin? And how is she connected to a rash of missing girls, all of whom seem to have disappeared under similar circumstances?",
        bookAuthor: Author(
          authorName: "Paraic O'Donnell",
          authorDescription:
              "Paraic O’Donnell's first novel, The Maker of Swans, was named the Amazon Rising Stars Debut of the Month for February 2016, and was shortlisted for the Bord Gáis Energy Irish Book Awards in the Newcomer of the Year category.",
          authorBooks: [],
          authorPhoto: "assets/images/paraic.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/vesper.jpg"),
  ];

  List<RankBook> rankingBook8 = [
    RankBook(
      rank: 1,
      rankColor: Colors.green,
      book: Book(
          pdfUrl: "",
          bookName: "The Midnight Library",
          bookDescription:
              "Between life and death there is a library, and within that library, the shelves go on forever. Every book provides a chance to try another life you could have lived. To see how things would be if you had made other choices . . . Would you have done anything different, if you had the chance to undo your regrets?",
          bookAuthor: Author(
            authorName: "Matt Haig",
            authorDescription:
                "Matt Haig was born in Sheffield, England. He writes books for both adults and children, often blending the worlds of domestic reality and outright fantasy, with a quirky twist.",
            authorBooks: [],
            authorPhoto: "assets/images/buffer.png",
          ),
          bookLikes: 100,
          bookCategories: [
            "Classics",
            "Plays",
            "Fiction",
            "Romance",
            "Drama",
            "Literature"
          ],
          bookPhoto: "assets/images/midnight.jpg"),
    ),
    RankBook(
      rank: 2,
      rankColor: Colors.blue,
      book: Book(
          pdfUrl: "",
          bookName: "To Sleep in a Sea of Stars",
          bookDescription:
              "Kira Navárez dreamed of life on new worlds. Now she's awakened a nightmare. During a routine survey mission on an uncolonized planet, Kira finds an alien relic. At first she's delighted, but elation turns to terror when the ancient dust around her begins to move.",
          bookAuthor: Author(
            authorName: "Christopher Paolini",
            authorDescription:
                "Christopher Paolini was born in Southern California and has lived most of his life in Paradise Valley, Montana. He published his first novel, Eragon, in 2003 at the age of nineteen, and quickly became a publishing phenomenon. His Inheritance Cycle—Eragon and its three sequels—have sold nearly 40 million copies worldwide. To Sleep in a Sea of Stars is his first adult novel.",
            authorBooks: [],
            authorPhoto: "assets/images/christopher.jpg",
          ),
          bookLikes: 100,
          bookCategories: [
            "Classics",
            "Plays",
            "Fiction",
            "Romance",
            "Drama",
            "Literature"
          ],
          bookPhoto: "assets/images/sleep.jpg"),
    ),
    RankBook(
      rank: 3,
      rankColor: Colors.red,
      book: Book(
          pdfUrl: "",
          bookName: "From Blood and Ash",
          bookDescription:
              "Chosen from birth to usher in a new era, Poppy’s life has never been her own. The life of the Maiden is solitary. Never to be touched. Never to be looked upon. Never to be spoken to. Never to experience pleasure. Waiting for the day of her Ascension, she would rather be with the guards, fighting back the evil that took her family, than preparing to be found worthy by the gods. But the choice has never been hers.",
          bookAuthor: Author(
            authorName: "Jennifer L. Armentrout",
            authorDescription:
                "# 1 New York Times and # 1 International Bestselling author Jennifer lives in Charles Town, West Virginia. All the rumors you’ve heard about her state aren’t true. When she’s not hard at work writing. she spends her time reading, watching really bad zombie movies, pretending to write, hanging out with her husband and her Jack Russell Loki. In early 2015, Jennifer was diagnosed with retinitis pigmentosa, a group of rare genetic disorders that involve a breakdown and dea",
            authorBooks: [],
            authorPhoto: "assets/images/jennifer.jpg",
          ),
          bookLikes: 100,
          bookCategories: [
            "Classics",
            "Plays",
            "Fiction",
            "Romance",
            "Drama",
            "Literature"
          ],
          bookPhoto: "assets/images/bloodAnd.jpg"),
    ),
    RankBook(
      rank: 4,
      rankColor: Colors.black,
      book: Book(
          pdfUrl: "",
          bookName: "A Court of Mist and Fury",
          bookDescription:
              "Feyre survived Amarantha's clutches to return to the Spring Court—but at a steep cost. Though she now has the powers of the High Fae, her heart remains human, and it can't forget the terrible deeds she performed to save Tamlin's people.",
          bookAuthor: Author(
            authorName: "Sarah J. Maas",
            authorDescription:
                "Sarah J. Maas is the #1 New York Times and internationally bestselling author of the Crescent City, A Court of Thorns and Roses, and the Throne of Glass series. Her books have sold more than twelve million copies and are published in thirty-seven languages. A New York native, Sarah lives in Philadelphia with her husband, son, and dog. To find out more, visit sarahjmaas.com or follow @therealsjmaas on Instagram.",
            authorBooks: [],
            authorPhoto: "assets/images/sarah.jpg",
          ),
          bookLikes: 100,
          bookCategories: [
            "Classics",
            "Plays",
            "Fiction",
            "Romance",
            "Drama",
            "Literature"
          ],
          bookPhoto: "assets/images/court.jpg"),
    ),
    RankBook(
      rank: 5,
      rankColor: Colors.black,
      book: Book(
          pdfUrl: "",
          bookName: "Caste: The Origins of Our Discontents",
          bookDescription:
              "The Pulitzer Prize–winning, bestselling author of The Warmth of Other Suns examines the unspoken caste system that has shaped America and shows how our lives today are still defined by a hierarchy of human divisions.",
          bookAuthor: Author(
            authorName: "Isabel Wilkerson",
            authorDescription:
                "Thanks for your question! My background is in book publishing; I worked in-house as an editor for twelve years, most recently as an editorial director at Penguin Random House, before going freelance as an editor and author in 2014. I discovered the girls' story through directing These Shining Lives by Melanie Marnich, which dramatizes the Ottawa dial-painters' experiences. The story really resonated with me. Through my research to make my theatre production authentic, I realized no book existed that told the story from the girls' perspective. I felt passionately about ensuring they were remembered and the individual women celebrated, which is how the book came to be",
            authorBooks: [],
            authorPhoto: "assets/images/isable.jpg",
          ),
          bookLikes: 100,
          bookCategories: [
            "Classics",
            "Plays",
            "Fiction",
            "Romance",
            "Drama",
            "Literature"
          ],
          bookPhoto: "assets/images/caste.jpg"),
    ),
    RankBook(
      rank: 6,
      rankColor: Colors.black,
      book: Book(
          pdfUrl: "",
          bookName:
              "Finding Freedom: A Cook's Story; Remaking a Life from Scratch",
          bookDescription:
              "From Erin French, owner and chef of the critically acclaimed The Lost Kitchen, a TIME world dining destination, a life-affirming memoir about survival, renewal, and finding a community to lift her up",
          bookAuthor: Author(
            authorName: "Erin French",
            authorDescription:
                "Erin French is the owner and chef of The Lost Kitchen, a 40-seat restaurant in Freedom, Maine, that was recently named one TIME Magazine’s World’s Greatest Places and one of \"12 Restaurants Worth Traveling Across the World to Experience\" by Bloomberg. A born-and-raised native of Maine, she learned early the simple pleasures of thoughtful food and the importance of gathering for a meal. Her love of sharing Maine and its delicious heritage with curious dinner guests and new friends alike has garnered attention in outlets such as The New York Times (her piece was one of the ten most read articles in the food section the year it was published), Martha Stewart Living, Wall Street Journal, Boston Globe, and Food & Wine. She has been invited to sh",
            authorBooks: [],
            authorPhoto: "assets/images/erin.jpg",
          ),
          bookLikes: 100,
          bookCategories: [
            "Classics",
            "Plays",
            "Fiction",
            "Romance",
            "Drama",
            "Literature"
          ],
          bookPhoto: "assets/images/finding.jpg"),
    ),
  ];

  List<RankBook> rankingBooks9 = [
    RankBook(
      rank: 7,
      rankColor: Colors.black,
      book: Book(
          pdfUrl: "",
          bookName: "The Night Swim",
          bookDescription:
              "After the first season of her true crime podcast became an overnight sensation and set an innocent man free, Rachel Krall is now a household name―and the last hope for thousands of people seeking justice. But she’s used to being recognized for her voice, not her face. Which makes it all the more unsettling when she finds a note on her car windshield, addressed to her, begging for help.",
          bookAuthor: Author(
            authorName: "Megan Goldin",
            authorDescription:
                "Megan Goldin is the bestselling author of \"The Escape Room\", praised by Lee Child as \"one of my favorite books of the year\", as well as \"The Girl In Kellers Way\", a critically-acclaimed domestic noir thriller nominated for Australia's leading crime fiction awards.Megan worked as a journalist for Reuters, the Australian ABC and Yahoo! News before writing her debut psychological thriller The Girl In Kellers Way.REVIEWS",
            authorBooks: [],
            authorPhoto: "assets/images/megan.jpg",
          ),
          bookLikes: 100,
          bookCategories: [
            "Classics",
            "Plays",
            "Fiction",
            "Romance",
            "Drama",
            "Literature"
          ],
          bookPhoto: "assets/images/nightSwim.jpg"),
    ),
    RankBook(
      rank: 8,
      rankColor: Colors.black,
      book: Book(
          pdfUrl: "",
          bookName: "Strike Me Down",
          bookDescription:
              "From the critically acclaimed author of Leave No Trace, the “nail-biting page-turner that grabs you early and never lets go” (The Real Book Spy), comes a visceral thriller where a high stakes crime triggers a woman’s complicated and potentially deadly search for the truth.",
          bookAuthor: Author(
            authorName: "Mindy Mejia",
            authorDescription:
                "My name is Mindy Mejia and I’m a writer. I write because, ever since I was six years old, my favorite game has been pretend. My life doesn't have symmetry, theme, symbolism, or meditated beauty and I gravitate toward these things like a houseplant to the sun. I love the perfect words; I love how 'fierce' and 'confounded' and 'swagger' look on the page and how my chest expands when I read them. I write because I believe in the reality of my fantasies, the truth in my fabrications. I’ve always had stories sneaking around my head, thrillers like LEAVE NO TRACE and EVERYTHING YOU WANT ME TO BE, and sometimes I inhabit those stories more than my own life. (Best not to mention that last",
            authorBooks: [],
            authorPhoto: "assets/images/mindy.jpg",
          ),
          bookLikes: 100,
          bookCategories: [
            "Classics",
            "Plays",
            "Fiction",
            "Romance",
            "Drama",
            "Literature"
          ],
          bookPhoto: "assets/images/strick.jpg"),
    ),
    RankBook(
      rank: 9,
      rankColor: Colors.black,
      book: Book(
          pdfUrl: "",
          bookName: "Sin Eater",
          bookDescription:
              "For the crime of stealing bread, fourteen-year-old May receives a life sentence: she must become a Sin Eater—a shunned woman, brutally marked, whose fate is to hear the final confessions of the dying, eat ritual foods symbolizing their sins as a funeral rite, and thereby shoulder their transgressions to grant their souls access to heaven.",
          bookAuthor: Author(
            authorName: "Megan Campisi",
            authorDescription:
                "Megan Campisi is a playwright, novelist and teacher. Her plays have performed in China, France and the United States. She has been a forest ranger, sous chef in Paris and a physical theater specialist around the world. Originally from California, she attended Yale University and the L'École International de Théâtre Jacques Lecoq. She lives in Brooklyn, NY with her family",
            authorBooks: [],
            authorPhoto: "assets/images/campisi.jpg",
          ),
          bookLikes: 100,
          bookCategories: [
            "Classics",
            "Plays",
            "Fiction",
            "Romance",
            "Drama",
            "Literature"
          ],
          bookPhoto: "assets/images/sinEat.jpg"),
    ),
    RankBook(
      rank: 10,
      rankColor: Colors.black,
      book: Book(
          pdfUrl: "",
          bookName: "To Crown A King",
          bookDescription:
              "Scotland, 1295. The kingdom is on the verge of rebellion. John Balliol wears the crown, but even his powerful Comyn kin cannot break King Edward of England’s insatiable desire to conquer the northern realm.",
          bookAuthor: Author(
            authorName: "Raedene Jeannette Melin",
            authorDescription:
                "Raedene Jeannette Melin is an award-winning fiction writer and author of the new novel To Crown A King. Born in British Columbia, Canada, she holds a BA in History and a Master’s in Integrated Studies. Her debut novel, Las Hermanas, published in 2018, won the National Indie Excellence Award for adventure fiction and placed as a finalist in the Next Generation Indie Book Awards. Infatuated with trees and fresh mountain air, Raedene lives in Salmon Arm with her husband and two dogs.",
            authorBooks: [],
            authorPhoto: "assets/images/Raedene.jpg",
          ),
          bookLikes: 100,
          bookCategories: [
            "Classics",
            "Plays",
            "Fiction",
            "Romance",
            "Drama",
            "Literature"
          ],
          bookPhoto: "assets/images/crownKing.jpg"),
    ),
    RankBook(
      rank: 11,
      rankColor: Colors.black,
      book: Book(
          pdfUrl: "",
          bookName: "Eight Perfect Murders",
          bookDescription:
              "A chilling tale of psychological suspense and an homage to the thriller genre tailor-made for fans: the story of a bookseller who finds himself at the center of an FBI investigation because a very clever killer has started using his list of fiction’s most ingenious murders.",
          bookAuthor: Author(
            authorName: "Peter Swanson",
            authorDescription:
                "Peter Swanson is the author of six novels including The Kind Worth Killing, winner of the New England Society Book Award, and finalist for the CWA Ian Fleming Steel Dagger, Her Every Fear, an NPR book of the year, and his most recent thriller, Eight Perfect Murders. His books have been translated into 30 languages, and his stories, poetry, and features have appeared in Asimov’s Science Fiction, The Atlantic Monthly, Measure, The Guardian, The Strand Magazine, and Yankee Magazine.",
            authorBooks: [],
            authorPhoto: "assets/images/peter.jpg",
          ),
          bookLikes: 100,
          bookCategories: [
            "Classics",
            "Plays",
            "Fiction",
            "Romance",
            "Drama",
            "Literature"
          ],
          bookPhoto: "assets/images/8Prfict.jpg"),
    ),
    RankBook(
      rank: 12,
      rankColor: Colors.black,
      book: Book(
          pdfUrl: "",
          bookName: "The Deep",
          bookDescription:
              "This is the only way to explain the series of misfortunes that have plagued the passengers of the ship from the moment they set sail: mysterious disappearances, sudden deaths. Now suspended in an eerie, unsettling twilight zone during the four days of the liner's illustrious maiden voyage, a number of the passengers - including millionaires Madeleine Astor and Benjamin Guggenheim, the maid Annie Hebbley and Mark Fletcher - are convinced that something sinister is going on . . . And then, as the world knows, disaster strikes.",
          bookAuthor: Author(
            authorName: "Alma Katsu",
            authorDescription:
                "Author of THE DEEP, a reimagining of the sinking of the Titanic, and THE HUNGER, a reimagining of the Donner Party's tragic journey (Putnam);THE TAKER, THE RECKONING and THE DESCENT (Gallery Books). The Taker was selected by ALA/Booklist as one of the top ten debut novels of 2011.",
            authorBooks: [],
            authorPhoto: "assets/images/alma.jpg",
          ),
          bookLikes: 100,
          bookCategories: [
            "Classics",
            "Plays",
            "Fiction",
            "Romance",
            "Drama",
            "Literature"
          ],
          bookPhoto: "assets/images/theDeep.jpg"),
    ),
  ];

  List<Book> alsoLikeBookForYou = [
    Book(
        pdfUrl: "",
        bookName: "What Lies Between Us",
        bookDescription:
            "Every other night, Maggie and Nina have dinner together. When they are finished, Nina helps Maggie back to her room in the attic, and into the heavy chain that keeps her there. Because Maggie has done things to Nina that can’t ever be forgiven, and now she is paying the price.",
        bookAuthor: Author(
          authorName: "John Marrs",
          authorDescription:
              "John Marrs is the author of #1 Best Sellers The One, The Good Samaritan, When You Disappeared, Welcome to Wherever You Are, Her Last Move, The Passengers, The Minders and What Lies Between Us.The One has been translated into 30 different languages and is to be turned into an eight-part Netflix series starting in autumn 2020.After working as a journalist for 25-years interviewing celebrities from the world of television, film and music for national newspapers and magazines, he is now a full-time writer.",
          authorBooks: [],
          authorPhoto: "assets/images/joun.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/lies.jpg"),
    Book(
        pdfUrl: "",
        bookName: "The Girl You Gave Away",
        bookDescription:
            "It is the day of Erin’s fortieth birthday party. Pink and silver balloons drift through her garden, the platters of food are empty and the recycling is overflowing with empty wine bottles.As Erin mingles with groups of family and friends, surrounded by love and laughter, she feels like the luckiest woman alive. She has no idea what fate has in store …",
        bookAuthor: Author(
          authorName: "Jess Ryder",
          authorDescription:
              "Jess Ryder is a pseudonym of novelist/screenwriter/television producer, Jan Page ",
          authorBooks: [],
          authorPhoto: "assets/images/jess.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/girlGave.jpg"),
    Book(
        pdfUrl: "",
        bookName: "The Vine Witch",
        bookDescription:
            "For centuries, the vineyards at Château Renard have depended on the talent of their vine witches, whose spells help create the world-renowned wine of the Chanceaux Valley. Then the skill of divining harvests fell into ruin when sorcière Elena Boureanu was blindsided by a curse. Now, after breaking the spell that confined her to the shallows of a marshland and weakened her magic, Elena is struggling to return to her former life. And the vineyard she was destined to inherit is now in the possession of a handsome stranger.",
        bookAuthor: Author(
          authorName: "Luanne G. Smith",
          authorDescription:
              "Luanne G. Smith is the bestselling author of The Vine Witch, The Glamourist, The Conjurer, and The Raven Spell. The Raven Song, the second book in her Conspiracy of Magic series, is set to release on October 11, 2022 just in time for witchy reading season. 🧙‍♀️✨📚",
          authorBooks: [],
          authorPhoto: "assets/images/luanne.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/theVine.jpg"),
    Book(
        pdfUrl: "",
        bookName: "Spellbreaker",
        bookDescription:
            "The orphaned Elsie Camden learned as a girl that there were two kinds of wizards in the world: those who pay for the power to cast spells and those, like her, born with the ability to break them. But as an unlicensed magic user, her gift is a crime. Commissioned by an underground group known as the Cowls, Elsie uses her spellbreaking to push back against the aristocrats and help the common man. She always did love the tale of Robin Hood.",
        bookAuthor: Author(
          authorName: "Charlie N. Holmberg",
          authorDescription:
              "Charlie N. Holmberg is an award-winning, best-selling, and internationally published author of fantasy and romantic fiction. She was raised a Trekkie alongside three sisters, who also have boy names. She is a proud BYU alumna, plays the ukulele, owns too many pairs of glasses, and finally adopted a dog. She currently lives with her family in Utah. Visit her at www.charlienholmberg.com.",
          authorBooks: [],
          authorPhoto: "assets/images/Charlie.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/Spellbreaker.jpg"),
    Book(
        pdfUrl: "",
        bookName: "The Kiss Thief",
        bookDescription:
            "They say your first kiss should be earned.Mine was stolen by a devil in a masquerade mask under the black Chicago sky.They say the vows you take on your wedding day are sacred.Mine were broken before we left church.They say your heart only beats for one man.Mine split and bled for two rivals who fought for it until the bitter end.I was promised to Angelo Bandini, the heir to one of the most powerful families in the Chicago Outfit.Then taken by Senator Wolfe Keaton, who held my father’s sins over his head to force me into marriage.They say that all great love stories have a happy ending.I, Francesca Rossi, found myself erasing and rewriting mine until the very last chapter.",
        bookAuthor: Author(
          authorName: "L.J. Shen",
          authorDescription:
              "L.J. Shen is USA Today and Washington Post bestselling author of contemporary romance books. She lives in California with her husband, son and lazy cat.When she's not writing, she enjoys reading a good book with a glass of wine and catching up on her favorite HBO and Netflix shows.",
          authorBooks: [],
          authorPhoto: "assets/images/lj.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/kissThefi.jpg"),
  ];
  List<Book> recommendedRelease = [
    Book(
        pdfUrl: "",
        bookName: "The Sweetest Oblivion",
        bookDescription:
            "In the murky waters of New York’s underworld, Elena’s sister is arranged to marry Nicolas Russo. A Made Man, a boss, a cheat—even measured against mafia standards. His reputation stretches far and wide and is darker than his black suits and ties. After his and Elena’s first encounter ends with an accidental glare on her part, she realizes he’s just as rude as he is handsome.",
        bookAuthor: Author(
          authorName: "Danielle Lori",
          authorDescription:
              "Danielle Lori's novels incorporate morally questionable heroes, electric hate to love relationships, and sometimes sweet but mostly sassy heroines. She has written in both the fantasy subgenre as well as contemporary, but will never stray from romance.",
          authorBooks: [],
          authorPhoto: "assets/images/Danielle.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/sweet.jpg"),
    Book(
        pdfUrl: "",
        bookName:
            "Fantastic Beasts and Where to Find Them: The Original Screenplay",
        bookDescription:
            "When Magizoologist Newt Scamander arrives in New York, he intends his stay to be just a brief stopover. However, when his magical case is misplaced and some of Newt's fantastic beasts escape, it spells trouble for everyone…",
        bookAuthor: Author(
          authorName: "J.K. Rowling",
          authorDescription:
              "Although she writes under the pen name J.K. Rowling, pronounced like rolling, her name when her first Harry Potter book was published was simply Joanne Rowling. Anticipating that the target audience of young boys might not want to read a book written by a woman, her publishers demanded that she use two initials, rather than her full name. As she had no middle name, she chose K as the second initial of her pen name, from her paternal grandmother Kathleen Ada Bulgen Rowling. She calls herself Jo and has said, \"No one ever called me 'Joanne' when I was young, unless they were angry.\" Following her marriage, she has sometimes used the name Joanne Murray when conducting personal business. During the Leveson Inquiry she ",
          authorBooks: [],
          authorPhoto: "assets/images/Rowling.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/fantastic.jpg"),
    Book(
        pdfUrl: "",
        bookName: "Norse Mythology",
        bookDescription:
            "Neil Gaiman has long been inspired by ancient mythology in creating the fantastical realms of his fiction. Now he turns his attention back to the source, presenting a bravura rendition of the great northern tales.",
        bookAuthor: Author(
          authorName: "Neil Gaiman",
          authorDescription:
              "I start touring 6 weeks from now. It's the first time I've done something like this since before Covid -- get out there every night, read stories and poems and suchlike, answer questions and generally try to interact with a living, breathing audience. I'm a bit nervous, to be honest. Still, the idea of interacting with living, breathing human beings seems wonderful.",
          authorBooks: [],
          authorPhoto: "assets/images/Neil.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/norse.jpg"),
    Book(
        pdfUrl: "",
        bookName: "Troy",
        bookDescription:
            "The story of Troy speaks to all of us - the kidnapping of Helen, a queen celebrated for her beauty, sees the Greeks launch a thousand ships against the city of Troy, to which they will lay siege for ten whole years. It is a terrible war with casualties on all sides as well as strained relations between allies, whose consequences become tragedies.",
        bookAuthor: Author(
          authorName: "Stephen Fry",
          authorDescription:
              "Stephen John Fry is an English comedian, writer, actor, humourist, novelist, poet, columnist, filmmaker, television personality and technophile. As one half of the Fry and Laurie double act with his comedy partner, Hugh Laurie, he has appeared in A Bit of Fry and Laurie and Jeeves and Wooster. He is also famous for his roles in Blackadder and Wilde, and as the host of QI. In addition to writing for stage, screen, television and radio he has contributed columns and articles for numerous newspapers and magazines, and has also written four successful novels and a series of memoirs.",
          authorBooks: [],
          authorPhoto: "assets/images/buffer.png",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/troy.jpg"),
  ];
  List<Book> recommendedRelease2 = [
    Book(
        pdfUrl: "",
        bookName: "Death Masks",
        bookDescription:
            "Harry Dresden, Chicago's only practicing professional wizard, should be happy that business is pretty good for a change. But now he's getting more than he bargained for:A duel with the Red Court of Vampires' champion, who must kill Harry to end the war between vampires and wizards...Professional hit men using Harry for target practice...The missing Shroud of Turin...A handless and headless corpse the Chicago police need identified...Not to mention the return of Harry's ex-girlfriend Susan, who's still struggling with her semi-vampiric nature. And who seems to have a new man in her life.Some days, it just doesn't pay to get out of bed. No matter how much you're charging.",
        bookAuthor: Author(
          authorName: "Jim Butcher",
          authorDescription:
              "Jim Butcher is the author of the Dresden Files, the Codex Alera, and a new steampunk series, the Cinder Spires. His resume includes a laundry list of skills which were useful a couple of centuries ago, and he plays guitar quite badly. An avid gamer, he plays tabletop games in varying systems, a variety of video games on PC and console, and LARPs whenever he can make time for it. Jim currently resides mostly inside his own head, but his head can generally be found in his home town of Independence, Missouri.",
          authorBooks: [],
          authorPhoto: "assets/images/ButcherGoodreads.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/91479.jpg"),
    Book(
        pdfUrl: "",
        bookName: "The Bear and the Nightingale",
        bookDescription:
            "At the edge of the Russian wilderness, winter lasts most of the year and the snowdrifts grow taller than houses. But Vasilisa doesn't mind—she spends the winter nights huddled around the embers of a fire with her beloved siblings, listening to her nurse's fairy tales. Above all, she loves the chilling story of Frost, the blue-eyed winter demon, who appears in the frigid night to claim unwary souls. Wise Russians fear him, her nurse says, and honor the spirits of house and yard and forest that protect their homes from evil.",
        bookAuthor: Author(
          authorName: "Katherine Arden",
          authorDescription:
              "A note to everyone who trips and falls upon my Goodreads page. First, welcome. Let us read and discuss all the books together. I review books I've read, everything gets five stars, if I didn't like it I don't put it up.Second, Goodreads is wondrous, but contacting me through my Goodreads DMs is a good way to ensure a long wait for a reply. Your best bet is Twitter or Instagram (arden_katherine) on both.",
          authorBooks: [],
          authorPhoto: "assets/images/KatherineArden.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/25489134.jpg"),
    Book(
        pdfUrl: "",
        bookName: "Uprooted",
        bookDescription:
            "“Our Dragon doesn’t eat the girls he takes, no matter what stories they tell outside our valley. We hear them sometimes, from travelers passing through. They talk as though we were doing human sacrifice, and he were a real dragon. Of course that’s not true: he may be a wizard and immortal, but he’s still a man, and our fathers would band together and kill him if he wanted to eat one of us every ten years. He protects us against the Wood, and we’re grateful, but not that grateful.”",
        bookAuthor: Author(
          authorName: "Naomi Novik",
          authorDescription:
              "An avid reader of fantasy literature since age six, when she first made her way through The Lord of the Rings, Naomi Novik is also a history buff with a particular interest in the Napoleonic era and a fondness for the work of Patrick O’Brian and Jane Austen. She studied English literature at Brown University, and did graduate work in computer science at Columbia University before leaving to participate in the design and development of the computer game Neverwinter Nights: Shadow of Undrentide. Over the course of a brief winter sojourn spent working on the game in Edmonton, Canada (accompanied by a truly alarming coat that now lives brooding in the depths of her closet), she realized she preferred writing to programming, and on returning to New York, decided to try her hand at novels.",
          authorBooks: [],
          authorPhoto: "assets/images/NaomiNovik.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/22544764.jpg"),
    Book(
        pdfUrl: "",
        bookName: "The Girl in the Tower",
        bookDescription:
            "The Bear and the Nightingale, Katherine Arden’s enchanting first novel, introduced readers to an irresistible heroine. Vasilisa has grown up at the edge of a Russian wilderness, where snowdrifts reach the eaves of her family’s wooden house and there is truth in the fairy tales told around the fire. Vasilisa’s gift for seeing what others do not won her the attention of Morozko—Frost, the winter demon from the stories—and together they saved her people from destruction. But Frost’s aid comes at a cost, and her people have condemned her as a witch.",
        bookAuthor: Author(
          authorName: "Katherine Arden",
          authorDescription:
              "A note to everyone who trips and falls upon my Goodreads page. First, welcome. Let us read and discuss all the books together. I review books I've read, everything gets five stars, if I didn't like it I don't put it up.Second, Goodreads is wondrous, but contacting me through my Goodreads DMs is a good way to ensure a long wait for a reply. Your best bet is Twitter or Instagram (arden_katherine) on both.",
          authorBooks: [],
          authorPhoto: "assets/images/KatherineArden.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/34050917.jpg"),
  ];

  List<Book> hotReleaseBooks = [
    Book(
        pdfUrl: "",
        bookName: "Cackle",
        bookDescription:
            "All her life, Annie has played it nice and safe. After being unceremoniously dumped by her longtime boyfriend, Annie seeks a fresh start. She accepts a teaching position that moves her from Manhattan to a small village upstate. She’s stunned by how perfect and picturesque the town is. The people are all friendly and warm. Her new apartment is dreamy too, minus the oddly persistent spider infestation.",
        bookAuthor: Author(
          authorName: "Rachel Harrison",
          authorDescription:
              "Rachel Harrison is the author of The Return, nominated for a Bram Stoker Award for Superior Achievement in a First Novel. Her short fiction has appeared in Guernica and Electric Lit. She lives in New York with her husband and their cat/overlord.",
          authorBooks: [],
          authorPhoto: "assets/images/buffer.png",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/cackle.jpg"),
    Book(
        pdfUrl: "",
        bookName: "Children of Chicago",
        bookDescription:
            "This horrifying retelling of the Pied Piper fairytale set in present-day Chicago is an edge of your seat, chills up the spine, thrill ride. When Detective Lauren Medina sees the calling card at a murder scene in Chicago’s Humboldt Park neighborhood, she knows the Pied Piper has returned. When another teenager is brutally murdered at the same lagoon where her sister’s body was found floating years before, she is certain that the Pied Piper is not just back, he’s looking for payment he’s owed from her. Lauren’s torn between protecting the city she has sworn to keep safe, and keeping a promise she made long ago with her sister’s murderer. She may have to ruin her life by exposing her secrets and lies to stop the Pied Piper before he collects.",
        bookAuthor: Author(
          authorName: "Cynthia Pelayo",
          authorDescription:
              "Cynthia “Cina” Pelayo is two-time Bram Stoker Awards® nominated poet and author. She is the author of LOTERIA, SANTA MUERTE, THE MISSING, and POEMS OF MY NIGHT, all of which have been nominated for International Latino Book Awards. POEMS OF MY NIGHT was also nominated for an Elgin Award. Her recent collection of poetry, INTO THE FOREST AND ALL THE WAY THROUGH explores true crime, that of the epidemic of missing and murdered women in the United States. Her modern day horror retelling of the Pied Piper fairy tale, CHILDREN OF CHICAGO will be released by Agora Books on 2/9/21. She holds a Bachelor of Arts in Journalism, a Master of Science in Marketing, a Master of Fine Arts in Writing, and is a Doctoral Candidate in Business Psychology. Cina",
          authorBooks: [],
          authorPhoto: "assets/images/CynthiaPelayo.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/55878030.jpg"),
    Book(
        pdfUrl: "",
        bookName: "Queen of Teeth",
        bookDescription:
            "Within forty-eight hours, Yaya Betancourt will go from discovering teeth between her thighs to being hunted by one of the most powerful corporations in America.She assumes the vagina dentata is a side effect of a rare genetic condition caused by AlphaBeta Pharmaceutical, decades ago, when she and several thousand others were still in the womb.But, when ABP corporate goons upend her life, she realizes her secondary teeth might be evidence of a new experiment for which she’s the most advanced test tube... a situation worsened when Yaya’s condition sprouts horns, tentacles, and a mind of its own.",
        bookAuthor: Author(
          authorName: "Hailey Piper",
          authorDescription:
              "Hailey Piper is the 2x Bram Stoker Award-nominated author of horror books The Worm and His Kings, Queen of Teeth, Unfortunate Elements of My Anatomy, Benny Rose, the Cannibal King, and The Possession of Natalie Glasgow.She is an active member of the Horror Writers Association, with dozens of short stories appearing in Pseudopod, Vastarien, Daily Science Fiction, The Arcanist, Flash Fiction Online, Year's Best Hardcore Horror, and other publications. She lives with her wife in Maryland, where their paranormal research is classified. Find her on Twitter via",
          authorBooks: [],
          authorPhoto: "assets/images/HaileyPiper.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/58556306.jpg"),
    Book(
        pdfUrl: "",
        bookName: "All's Well",
        bookDescription:
            "Miranda Fitch’s life is a waking nightmare. The accident that ended her burgeoning acting career left her with excruciating, chronic back pain, a failed marriage, and a deepening dependence on painkillers. And now she’s on the verge of losing her job as a college theater director. Determined to put on Shakespeare’s All’s Well That Ends Well, the play that promised, and cost, her everything, she faces a mutinous cast hellbent on staging Macbeth instead. Miranda sees her chance at redemption slip through her fingers.",
        bookAuthor: Author(
          authorName: "Mona Awad",
          authorDescription:
              "Mona Awad was born in Montreal and has lived in the US since 2009. Her debut novel, 13 WAYS OF LOOKING AT A FAT GIRL (Penguin Books, 2016), won the Amazon Best First Novel Award and was shortlisted for the Giller Prize. Her second novel, BUNNY (Viking, 2019), was a finalist for a GoodReads Choice Award for Best Horror, the New England Book Award and the Massachusetts Book Award. It won the Ladies of Horror Fiction Best Novel Award. Her latest novel, ALL'S WELL, is forthcoming with Simon & Schuster on August 3rd, 2021.",
          authorBooks: [],
          authorPhoto: "assets/images/mona.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/allsWell.jpg"),
    Book(
        pdfUrl: "",
        bookName: "The Pull of the Stars",
        bookDescription:
            "In an Ireland doubly ravaged by war and disease, Nurse Julia Power works at an understaffed hospital in the city center, where expectant mothers who have come down with the terrible new Flu are quarantined together. Into Julia's regimented world step two outsiders—Doctor Kathleen Lynn, a rumoured Rebel on the run from the police, and a young volunteer helper, Bridie Sweeney.",
        bookAuthor: Author(
          authorName: "Emma Donoghue",
          authorDescription:
              "Grew up in Ireland, 20s in England doing a PhD in eighteenth-century literature, since then in Canada. Best known for my novel, film and play ROOM, also other contemporary and historical novels and short stories, non-fiction, theatre and middle-grade novels.",
          authorBooks: [],
          authorPhoto: "assets/images/EmmaDonoghue.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/52722079.jpg"),
    Book(
        pdfUrl: "",
        bookName:
            "The Disordered Cosmos: A Journey into Dark Matter, Spacetime, and Dreams Deferred",
        bookDescription:
            "In The Disordered Cosmos, Dr. Chanda Prescod-Weinstein shares her love for physics, from the Standard Model of Particle Physics and what lies beyond it, to the physics of melanin in skin, to the latest theories of dark matter — all with a new spin informed by history, politics, and the wisdom of Star Trek.",
        bookAuthor: Author(
          authorName: "Chanda Prescod-Weinstein",
          authorDescription:
              "Chanda Prescod-Weinstein is an American and Barbadian theoretical cosmologist, and is both an Assistant Professor of Physics and Astronomy and a Core Faculty Member in Women's and Gender Studies at the University of New Hampshire.",
          authorBooks: [],
          authorPhoto: "assets/images/buffer.png",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/54455629.jpg"),
    Book(
        pdfUrl: "",
        bookName: "The Four Winds",
        bookDescription:
            "Texas, 1934. Millions are out of work and a drought has broken the Great Plains. Farmers are fighting to keep their land and their livelihoods as the crops are failing, the water is drying up, and dust threatens to bury them all. One of the darkest periods of the Great Depression, the Dust Bowl era, has arrived with a vengeance.",
        bookAuthor: Author(
          authorName: "Kristin Hannah",
          authorDescription:
              "Kristin Hannah is the award-winning and bestselling author of more than 20 novels including the international blockbuster, The Nightingale, which was named Goodreads Best Historical fiction novel for 2015 and won the coveted People's Choice award for best fiction in the same year. Additionally, it was named a Best Book of the Year by Amazon, iTunes, Buzzfeed, the Wall Street Journal, Paste, and The Week. Her novel, The Great Alone, was also voted as Goodreads best historical novel of the year in 2018.",
          authorBooks: [],
          authorPhoto: "assets/images/Kristin Hannah.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/53138081.jpg"),
    Book(
        pdfUrl: "",
        bookName:
            "Last Call: A True Story of Love, Lust, and Murder in Queer New York",
        bookDescription:
            "The Last Call Killer preyed upon gay men in New York in the ‘80s and ‘90s and had all the hallmarks of the most notorious serial killers. Yet because of the sexuality of his victims, the skyhigh murder rates, and the AIDS epidemic, his murders have been almost entirely forgotten.",
        bookAuthor: Author(
          authorName: "Elon Green",
          authorDescription:
              "Elon Green has written for The New York Times Magazine, The Atlantic, and The New Yorker, and appears in Unspeakable Acts, Sarah Weinman’s anthology of true crime.",
          authorBooks: [],
          authorPhoto: "assets/images/elon.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/53317339.jpg"),
  ];


  List<Book> newReleaseBooks = [
    Book(
        bookName: "Elevation",
        pdfUrl: "",
        bookDescription:
"Although Scott Carey doesn’t look any different, he’s been steadily losing weight. There are a couple of other odd things, too. He weighs the same in his clothes and out of them, no matter how heavy they are. Scott doesn’t want to be poked and prodded. He mostly just wants someone else to know, and he trusts Doctor Bob Ellis.",
        bookAuthor: Author(
          authorName: "Stephen King",
          authorDescription:
"Stephen Edwin King was born the second son of Donald and Nellie Ruth Pillsbury King. After his father left them when Stephen was two, he and his older brother, David, were raised by his mother. Parts of his childhood were spent in Fort Wayne, Indiana, where his father's family was at the time, and in Stratford, Connecticut. When Stephen was eleven, his mother brought her children back to Durham, Maine, for good. Her parents, Guy and Nellie Pillsbury, had become incapacitated with old age, and Ruth King was persuaded by her sisters to take over the physical care of them. Other family members provided a small house in Durham and financial support. After Stephen's grandparents passed away, Mrs. King found work in the kitchens of Pineland, a nearby residential facility for the mentally challenged.",
          authorBooks: [],
          authorPhoto: "assets/images/Stephen.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/38355410.jpg"),


    Book(
        pdfUrl: "",
        bookName: "Baby Teeth",
        bookDescription:
  "She’s the sweet-but-silent angel in the adoring eyes of her Daddy. He’s the only person who understands her, and all Hanna wants is to live happily ever after with him. But Mommy stands in her way, and she’ll try any trick she can think of to get rid of her. Ideally for good.",
  bookAuthor: Author(
          authorName: "Zoje Stage",
          authorDescription:
          "Zoje Stage's debut novel, BABY TEETH (2018), received four star reviews, was a USA Today and international bestseller, and was nominated for a Bram Stoker Award. It is currently under option for a film adaptation by Village Roadshow/Valparaiso Pictures. Her second \"mind-bending\" (NY Times) novel, WONDERLAND (2020), was one of Book Riot's Best Horror Books of 2020 and one of Overdrive's Best Audio Books of 2020. GETAWAY (2021), \"stunning…Stage's third triumph\" (Booklist, starred review), was named by LitReactor as one of the Best Books of 2021. A former filmmaker with a penchant for the dark and suspenseful, she lives in Pittsburgh.",
          authorBooks: [],
          authorPhoto: "assets/images/ZojeStage.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/35410511.jpg"),




    Book(
        pdfUrl: "",
        bookName: "Jar of Hearts",
        bookDescription:
  "When she was sixteen years old, Angela Wong—one of the most popular girls in school—disappeared without a trace. Nobody ever suspected that her best friend, Georgina Shaw, now an executive and rising star at her Seattle pharmaceutical company, was involved in any way. Certainly not Kaiser Brody, who was close with both girls back in high school.",
  bookAuthor: Author(
          authorName: "Jennifer Hillier",
          authorDescription:
          "She's the author of seven psychological thrillers, including the bestselling LITTLE SECRETS, which was a finalist for the Los Angeles Times Book Prize and the Anthony Award, and JAR OF HEARTS, which won the ITW Thriller Award for Best Hardcover Novel and was shortlisted for the Anthony and Macavity Awards.",
          authorBooks: [],
          authorPhoto: "assets/images/JenniferHillier.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/jar.jpg"),






    Book(
        pdfUrl: "",
        bookName: "A Flicker in the Dark",
        bookDescription:
       "When Chloe Davis was twelve, six teenage girls went missing in her small Louisiana town. By the end of the summer, Chloe’s father had been arrested as a serial killer and promptly put in prison. Chloe and the rest of her family were left to grapple with the truth and try to move forward while dealing with the aftermath.",
        bookAuthor: Author(
          authorName: "Stacy Willingham",
          authorDescription:
          "Prior to writing fiction full time, Stacy worked as a copywriter and brand strategist. She earned her BA in Magazine Journalism from the University of Georgia and MFA in Writing from the Savannah College of Art & Design.",
          authorBooks: [],
          authorPhoto: "assets/images/StacyWillingham.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/57693172.jpg"),


  ];

  List<Book>newReleaseBooks2=[


    Book(
        pdfUrl: "",
        bookName: "The Dollhouse",
        bookDescription:
        "When Peter Baden's daughter Olivia was abducted nearly a year ago, he left his career as a respected journalist to find her. Now he spends his days searching for Olivia, and helping other families of abducted children survive the emotionally and physically exhausting experience of finding a missing child.",
        bookAuthor: Author(
          authorName: "Sara Ennis",
          authorDescription:
          "Sara has been telling stories since before she could hold a pencil. First, she used flashcards, then a typewriter her grandfather gave her for her sixth birthday. In the second grade, she’d write book reports about books that only existed in her mind. In third grade, her class produced a play she’d written. People who know her well think she should write a book about her 'real life' but Sara says the stuff she writes is much more believable and a lot less traumatic. She is a fan of good tequila, travel, cooking, and animals, not always in that order. Sara grew up in and around Los Angeles, but moved on purpose and with intent to Des Moines, Iowa. She lives with her floofy personal assistant Charlie, who edits her newsletter, and camera-shy but very bossy feline, Sasha.",
          authorBooks: [],
          authorPhoto: "assets/images/SaraEnnis.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/58194933.jpg"),






    Book(
        pdfUrl: "",
        bookName: "Local Woman Missing",
        bookDescription:
        "Shelby Tebow is the first to go missing. Not long after, Meredith Dickey and her six-year-old daughter, Delilah, vanish just blocks away from where Shelby was last seen, striking fear into their once-peaceful community. Are these incidents connected? After an elusive search that yields more questions than answers, the case eventually goes cold.",
        bookAuthor: Author(
          authorName: "Mary Kubica",
          authorDescription:
          "Mary Kubica is a New York Times bestselling author of suspense thrillers including The Good Girl, The Other Mrs., and Local Woman Missing. Her books have been translated into over thirty languages and have sold over two million copies worldwide. She’s been described as “a helluva storyteller” (Kirkus) and “a writer of vice-like control” (Chicago Tribune), and her novels have been praised as “hypnotic” (People) and “thrilling and illuminating” (L.A. Times). She lives outside of Chicago with her husband and children.",
          authorBooks: [],
          authorPhoto: "assets/images/MaryKubica.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/54737068.jpg"),
    Book(
        pdfUrl: "",
        bookName: "My Dark Vanessa",
        bookDescription:
        "2017. Amid the rising wave of allegations against powerful men, a reckoning is coming due. Strane has been accused of sexual abuse by a former student, who reaches out to Vanessa, and now Vanessa suddenly finds herself facing an impossible choice: remain silent, firm in the belief that her teenage self willingly engaged in this relationship, or redefine herself and the events of her past. But how can Vanessa reject her first love, the man who fundamentally transformed her and has been a persistent presence in her life? Is it possible that the man she loved as a teenager—and who professed to worship only her—may be far different from what she has always believed?",
        bookAuthor: Author(
          authorName: "Kate Elizabeth Russell",
          authorDescription:
          "Kate Elizabeth Russell was born and raised in eastern Maine. She holds an MFA from Indiana University and a PhD from the University of Kansas. My Dark Vanessa is her debut novel.",
          authorBooks: [],
          authorPhoto: "assets/images/KateElizabethRussell.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/44890081.jpg"),


    Book(
        pdfUrl: "",
        bookName:
        "All The Rage",
        bookDescription:
        "A teenage girl is found wandering the outskirts of Oxford, dazed and distressed. The story she tells is terrifying. Grabbed off the street, a plastic bag pulled over her face, then driven to an isolated location where she was subjected to what sounds like an assault. Yet she refuses to press charges.",
        bookAuthor: Author(
          authorName: "Cara Hunter",
          authorDescription:
          "Cara Hunter is a writer who lives in Oxford, in a street not unlike those featured in her series of crime books. Close to Home is her debut featuring DI Adam Fawley, and her second, In the Dark, is coming soon.",
          authorBooks: [],
          authorPhoto: "assets/images/CaraHunter.jpg",
        ),
        bookLikes: 100,
        bookCategories: [
          "Classics",
          "Plays",
          "Fiction",
          "Romance",
          "Drama",
          "Literature"
        ],
        bookPhoto: "assets/images/43518959.jpg"),
  ];

}
