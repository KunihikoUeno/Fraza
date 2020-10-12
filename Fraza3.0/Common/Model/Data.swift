import UIKit

class HomeIcon {
    
    let title: String
    let image: UIImage
    
    init(title: String, image: UIImage) {
        self.title = title
        self.image = image
    }
    
}

class PhraseBook {
    
    let category: Int
    
    init(category: Int) {
        self.category = category
    }
    
}

class Phrase: Identifiable {
    
    let title: String
    let phrase: String
    let pronunciation: String
    let audio: String
    
    init(title: String, phrase: String, pronunciation: String, audio: String) {
        self.title = title
        self.phrase = phrase
        self.pronunciation = pronunciation
        self.audio = audio
    }
    
}

class FilteredPhrase {
    
    let categoryId: Int
    let phraseNumber: Int
    let phraseForSearch: Phrase
    
    init(categoryId: Int, phraseNumber: Int, phraseForSearch: Phrase) {
        self.categoryId = categoryId
        self.phraseNumber = phraseNumber
        self.phraseForSearch = phraseForSearch
    }
    
}

var homeIcons = [HomeIcon]()

func createHomeIcons() -> [HomeIcon] {
    return [
        HomeIcon(title: "Basic words", image: #imageLiteral(resourceName: "1-basic-words")),
        HomeIcon(title: "Introduction", image: #imageLiteral(resourceName: "2-introduction")),
        HomeIcon(title: "Don't know", image: #imageLiteral(resourceName: "3-dont-know")),
        HomeIcon(title: "Numbers", image: #imageLiteral(resourceName: "4-numbers")),
        HomeIcon(title: "Friends", image: #imageLiteral(resourceName: "5-friends")),
        HomeIcon(title: "Family", image: #imageLiteral(resourceName: "6-family")),
        HomeIcon(title: "Invited", image: #imageLiteral(resourceName: "7-invited")),
        HomeIcon(title: "Directions", image: #imageLiteral(resourceName: "8-directions")),
        HomeIcon(title: "Transportation", image: #imageLiteral(resourceName: "9-transportation")),
        HomeIcon(title: "Airport", image: #imageLiteral(resourceName: "10-airport")),
        HomeIcon(title: "Shopping", image: #imageLiteral(resourceName: "11-shopping")),
        HomeIcon(title: "Get around", image: #imageLiteral(resourceName: "12-get-around")),
        HomeIcon(title: "Bazaar", image: #imageLiteral(resourceName: "13-bazaar")),
        HomeIcon(title: "Dining", image: #imageLiteral(resourceName: "14-dining")),
        HomeIcon(title: "Restaurant", image: #imageLiteral(resourceName: "15-restaurant")),
        HomeIcon(title: "Hotel", image: #imageLiteral(resourceName: "16-hotel")),
        HomeIcon(title: "Phone", image: #imageLiteral(resourceName: "17-phone")),
        HomeIcon(title: "Sick", image: #imageLiteral(resourceName: "18-sick")),
        HomeIcon(title: "Trouble", image: #imageLiteral(resourceName: "19-trouble")),
        HomeIcon(title: "Farewell", image: #imageLiteral(resourceName: "20-farewell"))
    ]
}

var phraseData: [[Phrase]] =  [[], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], [], []]

func setupPhraseData() {
    phraseData[0] = [
        // Category 1: Basic words
        Phrase(title: "Yes/No", phrase: "Да・Нет", pronunciation: "Da・Niet", audio: "yes-no"),
        Phrase(title: "Thank you", phrase: "Спасибо", pronunciation: "Spasiba", audio: "thank-you"),
        Phrase(title: "You are welcome.", phrase: "Пожалуйста", pronunciation: "Pazhalusta", audio: "you-are-welcome"),
        Phrase(title: "Hello", phrase: "Здравствуйте", pronunciation: "Zdrastvuite", audio: "hello"),
        Phrase(title: "Good morning", phrase: "Доброе утро", pronunciation: "Dobrae utra", audio: "good-morning"),
        Phrase(title: "Good evening", phrase: "Добрый вечер", pronunciation: "Dobryi vecher", audio: "good-evening"),
        Phrase(title: "How are you?(formal)", phrase: "Как у вас дела?", pronunciation: "Kak u vas dela?", audio: "how-are-you1"),
        Phrase(title: "How are you?(informal)", phrase: "Как дела?", pronunciation: "Kak dela?", audio: "how-are-you2"),
        Phrase(title: "Nice to meet you.", phrase: "Разрешите представиться.", pronunciation: "Razrishiti pritstavitsa", audio: "nice-to-meet-you"),
        Phrase(title: "I am glad to meet you.", phrase: "Я очень рад(рада) познакомиться.", pronunciation: "Ya ochin` rad (rada) paznakomitsa", audio: "i-am-glad")
    ]
    phraseData[1] = [
        // Category 2: Introduction
        Phrase(title: "My name is Suzuki. My name is Petya.", phrase: "Меня зовут Сузуки. Моё имя Петя.", pronunciation: "Minya zavut Suzuki. Mayo imya Petya", audio: "my-name-is"),
        Phrase(title: "What is your name?", phrase: "А как тебя(Вас) зовут?", pronunciation: "A kak tibya(Vas) zavut?", audio: "what-is-your-name"),
        Phrase(title: "I am Japanese. I am Russian.", phrase: "Я японец(японка).  Я русский (русская).", pronunciation: "Ya iponits (iponka). Ya ruski(ruskaya).", audio: "i-am-japanese"),
        Phrase(title: "I am from Japan. I am from Moscow.", phrase: "Я из Японии.  Я из Москвы.", pronunciation: "Ya iz Iponii. Ya iz Maskvy.", audio: "i-am-from-japan"),
        Phrase(title: "I am 25 years old. I am 30 years old.", phrase: "Мне 25 лет. Мне 30 лет.", pronunciation: "Mne 25(dvatsat` pyat`) let. Mne 30(tritsat`) let.", audio: "i-am-25")
    ]
    phraseData[2] = [
        // Category 3: Don't know
        Phrase(title: "What is it?", phrase: "Что Вы сказали? (Что?)", pronunciation: "Shto vy skazali? (shto?)", audio: "what-is-it"),
        Phrase(title: "I don't understand", phrase: "Я не понял(поняла).", pronunciation: "Ya ni ponyal (panyala).", audio: "i-dont-understand"),
        Phrase(title: "Please speak slowly.", phrase: "Говорите пожалуйста помедленнее.", pronunciation: "Gavarite pazhalusta pamedlenei", audio: "please-speak-slowly"),
        Phrase(title: "I don't understand Russian.", phrase: "Я не понимаю русский язык. (Я не говорю по-русски)", pronunciation: "Ya ne panimayu russki izyk. (Ya ne gavaryu pa ruski)", audio: "i-dont-understand-russian")
    ]
    phraseData[3] = [
        // Category 4: Numbers
        Phrase(title: "0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10", phrase: "ноль, один, два, три, четыре, пять, шесть, семь, восемь, девять, десять", pronunciation: "nol`, adin, dva, tri, chityri, pyat`, shest`, sem`, vosim`, devit`, desit`", audio: "0-10"),
        Phrase(title: "11, 12, 13, 14, 15, 16, 17, 18, 19", phrase: "одиннадцать, двенадцать , тринадцать, четырнадцать, пятнадцать, шестнадцать, семнадцать, восемнадцать, девятнадцать", pronunciation: "adinatsat`, dvinatsat`, trinatsat`, chityrnatsat`, pitnatsat`, shisnatsat`, simnatsat`, vasimnatsat`, divyatnatsat`", audio: "11-19"),
        Phrase(title: "20, 30, 40, 50, 60, 70, 80, 90, 100", phrase: "двадцать, тридцать, сорок, пятьдесят, шестьдесят, семьдесят, восемьдесят, девяносто, сто", pronunciation: "dvatsat`, tritsat`, sorak, pisyat, shisyat, semdisyat, vosimdisyat, divinosta, sto", audio: "20-100"),
        Phrase(title: "200, 300, 400, 500, 600, 700, 800, 900, 1000", phrase: "двести, триста, четыреста, пятьсот, шестьсот, семьсот, восемьсот, девятьсот, тысяча", pronunciation: "dvesti, trista, chityrista, pitsot, shisot, simsot, vasimsot, divitsot, tysicha", audio: "20-1000"),
        Phrase(title: "18, 53, 119, 237, 904", phrase: "восемнадцать, пятьдесят три, пятьдесят три, двести тридцать семь, девятьсот четыре", pronunciation: "vasimnatsat`, pisyat tri, sto divitnatsat`, dvesti tritsat` sem`, vasimnatsat`", audio: "other")
    ]
    phraseData[4] = [
        // Category 5: Friends
        Phrase(title: "Let's be friends.", phrase: "Давайте познакомимся.", pronunciation: "Davaiti paznakomimsya", audio: "lets-be-friends"),
        Phrase(title: "Are you a student?", phrase: "Вы студент(студентка)?", pronunciation: "Vy student(studentka)?", audio: "are-you-a-student"),
        Phrase(title: "What is your job?", phrase: "Кем вы работаете?", pronunciation: "Kem vy rabotaite?", audio: "what-is-your-job"),
        Phrase(title: "Shall we walk together?", phrase: "Давайте прогуляемся?", pronunciation: "Davaiti pragulyaimsya", audio: "shall-we-walk"),
        Phrase(title: "Can you show me the city?", phrase: "Вы не покажете мне город?", pronunciation: "y ni pakazhiti mne gorad?", audio: "can-you-show-me-the-city"),
        Phrase(title: "Shall we eat?.", phrase: "Давайте пообедаем(afternoon) {поужинаем(evening), позавтракаем(morning)}?", pronunciation: "Davaiti paabedaim (pauzhinaim, pazaftrakaim)", audio: "shall-we-eat"),
        Phrase(title: "What is your hobby?", phrase: "Какое у вас хобби?", pronunciation: "Kakoe u vas hobi?", audio: "what-is-your-hobby")
    ]
    phraseData[5] = [
        // Category 6: Family
        Phrase(title: "Are you married?", phrase: "Вы замужем(For Females)? Вы женаты(For males)?", pronunciation: "Vy zamuzhem(zhinaty)?", audio: "are-you-married"),
        Phrase(title: "How many people are in your family?", phrase: "Сколько человек у вас в семье?", pronunciation: "Skol`ka chilavek u vas v sim`e?", audio: "how-many-people-are-in-your-family"),
        Phrase(title: "How many people?", phrase: "Сколько человек?", pronunciation: "Skol`ka chilavek?", audio: "how-many-people"),
        Phrase(title: "Do you have brothers or sisters?", phrase: "У вас есть брат или сестра?", pronunciation: "U vas jest` brat ili sistra?", audio: "do-you-have-brothers-or-sisters"),
        Phrase(title: "1 person. 2 people. 3 people. 4, 5 people.", phrase: "1(один) человек. 2 человека. 3 человека. 4-5 человек.", pronunciation: "adin chilavek. dva chilaveka. tri chilaveka. chityri-pyat` chilavek.", audio: "1-5people")
    ]
    phraseData[6] = [
        // Category 7: Invited
        Phrase(title: "It was fun.", phrase: "Было весело.", pronunciation: "Byla vesela", audio: "it-was-fun"),
        Phrase(title: "Let's meet again.", phrase: "До следующей встречи.", pronunciation: "Da sledushei fsrechi", audio: "lets-meet-again"),
        Phrase(title: "I am glad.", phrase: "Я счастлив(счастлива).", pronunciation: "Ya shasliv(shasliva)", audio: "i-am-glad-invited"),
        Phrase(title: "Thank you for the invite.", phrase: "Спасибо большое за приглашение.", pronunciation: "Spasiba bal`shoe za priglashenie", audio: "thank-you-for-the-invite")
    ]
    phraseData[7] = [
        // Category 8: Directions
        Phrase(title: "Where is ～?", phrase: "Где находится　～?", pronunciation: "Gde nahoditsa ～?", audio: "where-is"),
        Phrase(title: "Over there.", phrase: "Там.", pronunciation: "Tam", audio: "over-there"),
        Phrase(title: "Straight. Left. Right", phrase: "Прямо. Слева. Справа.", pronunciation: "Pryama. Sleva. Sprava.", audio: "straight-left-right"),
        Phrase(title: "Station. Police. Bus stop. Taxi. Hotel.", phrase: "Вокзал. Милиция. Остановка. Такси. Отель.", pronunciation: "Vakzal. Militsiya. Astanovka. Taksi. Atel`", audio: "station-police-bus-stop")
    ]
    phraseData[8] = [
        // Category 9: Transportation
        Phrase(title: "Excuse me, where is the station?", phrase: "Извините, где находится вокзал?", pronunciation: "Izvinite, gde nahoditsa vakzal?", audio: "excuse-me-where-is-the-station"),
        Phrase(title: "Please get me off here.", phrase: "Остановите, пожалуйста, здесь.", pronunciation: "Astanaviti pazhalusta zdes`", audio: "please-get-me-off-here"),
        Phrase(title: "I am going to ～. I am going to the department store.", phrase: "Я иду (еду) в(на)～. Я иду в ГУМ.", pronunciation: "Ya idu(edu) v (na) ～. Ya idu v GUM", audio: "i-am-going-to-the-department-store"),
        Phrase(title: "Excuse me, how do you get to ～?(On foot)", phrase: "Извините, как лучше пройти в(на) ～?", pronunciation: "Izviniti, kak luchshe praiti v(na) ～?", audio: "how-do-you-get-to-on-foot"),
        Phrase(title: "Where should I get off at? (Bus)", phrase: "Где лучше выйти?", pronunciation: "Gde luchshe vyiti?", audio: "where-should-i-get-off-at"),
        Phrase(title: "How much is it? Please write it down.", phrase: "Сколько стоит? Напишите, пожалуйста, на бумаге.", pronunciation: "Skol`ka stoit? Napishiti pazhalusta na bumagi.", audio: "how-much-is-it-please-write-it-down")
    ]
    phraseData[9] = [
        // Category 10: Airport
        Phrase(title: "I am a tourist. (At the immigration)", phrase: "Моя цель - туризм.", pronunciation: "Maya tsel` - turizm", audio: "i-am-a-tourist"),
        Phrase(title: "Excuse me, where is ～?", phrase: "Скажите пожалуйста, где находится　～?", pronunciation: "Skazhiti pazhalusta, gde nahoditsa ～?", audio: "excuse-me-where-is"),
        Phrase(title: "Immigration. Visa. Currency exchange. Taxi. Bus.", phrase: "Миграционная служба (миграционка). Виза. Обменный пункт (обменка). Такси. Автобус.", pronunciation: "Migratsionaya sluzhba(Migratsionka). Viza. Abmenyi punkt(Abmenka). Taksi. Aftobus.", audio: "immigration-visa-currency-exchange")
    ]
    phraseData[10] = [
        // Category 11: Shopping
        Phrase(title: "How much is it?", phrase: "Сколько это стоит?", pronunciation: "Skol`ka eta stoit?", audio: "how-much-is-it"),
        Phrase(title: "Do you have 〜? Do you have a matryoshka?", phrase: "У вас есть～ ? У Вас есть матрёшки?", pronunciation: "U vas est`～? U vas est` matryoshki?", audio: "do-you-have"),
        Phrase(title: "May I have this?", phrase: "Дайте мне это, пожалуйста.", pronunciation: "Daiti mne eta, pazhalusta.", audio: "may-i-have-this"),
        Phrase(title: "Cloths. Alcohol. Films. Souveniers. CD,DVD.", phrase: "Одежда. Водка. Плёнка. Сувенир. CD・DVD", pronunciation: "Adezhda. Suvinir (Suviniry). Plyonka. Votka. Adezhda", audio: "cloths-alcohol-films")
    ]
    phraseData[11] = [
        // Category 12: Get around
        Phrase(title: "How long does it take? It takes 20 minutes.", phrase: "Сколько времени это займёт? то займёт 20 минут.", pronunciation: "Skol`ka vremini eta zaimyot? Eta zaimyot dvatsat` minut.", audio: "how-long-does-it-take"),
        Phrase(title: "To 〜, please. (For taxi) TO GUM, please.", phrase: "До　～　,пожалуйста. До ГУМа, пожалуйста", pronunciation: "Da～, pazhalusta. Da GUMa pazhalusta.", audio: "to-please-taxi"),
        Phrase(title: "Can I go by bus?", phrase: "Можно доехать на автобусе?", pronunciation: "Mozhna dajehat` na aftobuse?", audio: "can-i-go-by-bus"),
        Phrase(title: "How much is it to travel?", phrase: "Сколько стоит проезд?", pronunciation: "Skol`ka stoit praezd?", audio: "how-much-is-it-to-travel"),
        Phrase(title: "How do you go to 〜? How do you go to GUM?", phrase: "Скажите пожалуйста,как доехать до～? Скажите пожалуйста,как доехать до ГУМа ?", pronunciation: "Skazhiti pazhalusta, kak daehat` da ～? Skazhiti pazhalusta, kak daehat` da GUMa?", audio: "how-do-you-go-to-gum")
    ]
    phraseData[12] = [
        // Category 13: Bazaar
        Phrase(title: "How much is it?", phrase: "Сколько это стоит?", pronunciation: "Skol`ka eta stoit?", audio: "how-much-is-it-bazaar"),
        Phrase(title: "What is this?", phrase: "Что это такое?", pronunciation: "Shto eta takoe?", audio: "what-is-this"),
        Phrase(title: "Give me a kilo. 500g, 2kg, 3kg", phrase: "Дайте 1 килограмм. 500 грамм, 2 килограмма, 5 килограммов", pronunciation: "Daitye adin kilogram. pitsot gram, dva kilagrama, pyat` kilagramaf", audio: "gie-me-a-kilo"),
        Phrase(title: "Give me this, (please).", phrase: "Дайте (пожалуйста) это.", pronunciation: "Daiti (pazhalusta) eta", audio: "give-me-this-please"),
        Phrase(title: "Vegetables. Bread. Jam. Alcohol. Chocolate.", phrase: "Овощи. Хлеб. Варенье. Водка. Шоколад", pronunciation: "Ovashi. Hlep. Varen`e. Votka. Shakalat", audio: "vegetables-bread-jam")
    ]
    phraseData[13] = [
        // Category 14: Dining
        Phrase(title: "Let's eat.", phrase: "Давайте кушать.", pronunciation: "Davaiti kushat`", audio: "lets-eat"),
        Phrase(title: "Thank you for the food.", phrase: "Спасибо за угощение.", pronunciation: "Spasiba za ugashenie.", audio: "thank-you-for-the-food"),
        Phrase(title: "Very delicious", phrase: "Очень вкусно.", pronunciation: "Ochin` fkusna", audio: "very-delicious"),
        Phrase(title: "What is the name of the food?", phrase: "Это что за еда?", pronunciation: "Eta chto za ida?", audio: "what-is-the-name-of-the-food"),
        Phrase(title: "I am full.", phrase: "Я уже сыт(сыта).", pronunciation: "Ya uzhe syt (syta)", audio: "i-am-full"),
        Phrase(title: "Excuse me, I can't eat.", phrase: "Извините, я не могу это есть.", pronunciation: "Izviniti, ya ni magu eta est`.", audio: "i-cant-eat")
    ]
    phraseData[14] = [
        // Category 15: Restaurant
        Phrase(title: "I have a reservation.", phrase: "Был заказан столик.", pronunciation: "Byl zakazan stolik", audio: "i-have-a-reservation"),
        Phrase(title: "Can I order, please?", phrase: "Примите заказ, пожалуйста.", pronunciation: "primiti zakaz pazhalusta", audio: "can-i-order-please"),
        Phrase(title: "GIve me this, please.", phrase: "Дайте, пожалуйста, это.", pronunciation: "Daiti pazhalusta eta.", audio: "give-me-this-please-restaurant"),
        Phrase(title: "Check, please.", phrase: "ринесите, пожалуйста, счёт.", pronunciation: "Prinisiti, pazhalusta, shyot.", audio: "check-please")
    ]
    phraseData[15] = [
        // Category 16: Hotel
        Phrase(title: "Do you have a room?", phrase: "У вас есть свободные номера?", pronunciation: "U vas est` svabodnye namera?", audio: "do-you-have-a-room"),
        Phrase(title: "How much is it for a night?", phrase: "Сколько стоит номер в сутки?", pronunciation: "Skol`ka stoit nomer f sutki?", audio: "how-much-is-it-for-a-night"),
        Phrase(title: "I have a reservation.", phrase: "Был заказан номер.", pronunciation: "Byl zakazan nomer", audio: "i-have-a-reservation-hotel"),
        Phrase(title: "There is a problem with my room.", phrase: "У меня в номере проблемы.", pronunciation: "U minya v nomiri prablemy", audio: "there-is-a-problem"),
        Phrase(title: "Hotel. One day. 2 days. 3 days. Key. Bed. Sheets.", phrase: "Отель. Одни сутки. Двое суток. Трое суток. Ключ. Кровать. Простыня.", pronunciation: "Atel`. Dvoya sutak.. Klyuch`. Kravat`. Prastynya.", audio: "hotel-1day-2days")
    ]
    phraseData[16] = [
        // Category 17: Phone
        Phrase(title: "Hello (On the phone)", phrase: "Алло (Аллё)", pronunciation: "Alyo", audio: "hello-phone"),
        Phrase(title: "Can I speak with ～?", phrase: "Здравствуйте, я могу поговорить с～?", pronunciation: "Zdrastvuiti, ya magu pagavarit` s～?", audio: "can-i-speak-with"),
        Phrase(title: "This is ～. This is Suzuki. This is Olya.", phrase: "Это ～. Это Сузуки. Это Оля.", pronunciation: "Eta ～. Eta Suzuki. Eta Olya.", audio: "this-is-suzuki")
    ]
    phraseData[17] = [
        // Category 18: Sick
        Phrase(title: "Please call an ambulance.", phrase: "Позовите ,пожалуйста, скорую помощь.", pronunciation: "Pazaviti pazhalusta skoruyu pomash`.", audio: "call-an-ambulance"),
        Phrase(title: "Please call a taxi.", phrase: "Вызовите ,пожалуйста, такси.", pronunciation: "Vyzaviti pazhalusta vracha", audio: "call-a-taxi"),
        Phrase(title: "I got sick.", phrase: "Я заболел(заболела).", pronunciation: "a zabalel(zabalela).", audio: "i-got-sick"),
        Phrase(title: "Where is the hospotal?", phrase: "Где находится больница?", pronunciation: "Gde nahoditsa bal`nitsa?", audio: "where-is-the-hospital"),
        Phrase(title: "I am feeling bad.", phrase: "Мне плохо.", pronunciation: "Mne ploha.", audio: "feeling-bad"),
        Phrase(title: "Hurting. I have a stomachache. I have a fever. I have a  cold.", phrase: "Болит. У меня болит желудок. У меня температура. Я простудился (простудилась).", pronunciation: "Balit. U minya balit zhiludak. U minya timpiratura. Ya prastudilsya (prastudilas`)", audio: "hurting-stomachahe-fever")
    ]
    phraseData[18] = [
        // Category 19: Trouble
        Phrase(title: "Please call Japanese embassy.", phrase: "Позвоните, пожалуйста, в японское посольство.", pronunciation: "Pazvaniti pazhalusta v iponskae pasol`stva.", audio: "call-japanese-embassy"),
        Phrase(title: "Please call police.", phrase: "Позвоните, пожалуйста, в милицию.", pronunciation: "Pazvaniti pazhalusta v militsiyu.", audio: "please-call-police"),
        Phrase(title: "Where is the police station?", phrase: "Где милицейский участок (милиция)?", pronunciation: "Gde militseiski uchastak?", audio: "where-is-the-police-station"),
        Phrase(title: "I was stolen. (someone stole my possession)", phrase: "У меня украли.", pronunciation: "U minya ukrali", audio: "someone-stole-my-possesion"),
        Phrase(title: "Police took my money.", phrase: "Милиция забрала у меня деньги.", pronunciation: "Militsiya zabrala u minya den`gi.", audio: "police-took-my-money"),
        Phrase(title: "I was robbed.", phrase: "Меня обокрали.", pronunciation: "Minya abakrali.", audio: "i-was-robbed")
    ]
    phraseData[19] = [
        // Category 20: Farewell
        Phrase(title: "I am looking forward to seeing you again.", phrase: "Жду с нетерпением нашей следующей встречи!", pronunciation: "Zhdu s nitirpeniem nashei sledushei fstrechi!", audio: "looking-forward-to-seeing-you"),
        Phrase(title: "I will not forget about you!", phrase: "Я тебя не смогу забыть!", pronunciation: "a tibya nismagu zabyt`!", audio: "i-will-not-forget"),
        Phrase(title: "Let's meet again!", phrase: "До следующей встречи!", pronunciation: "Da sledushei fstrechi", audio: "lets-meet-again-farewell"),
        Phrase(title: "Thank you for everything.", phrase: "Большое спасибо за всё.", pronunciation: "Bal`shoe spasiba zafsyo.", audio: "thank-you-for-everything"),
        Phrase(title: "You have done so much for me.", phrase: "Вы так много для меня сделали.", pronunciation: "Vy tak mnoga dlya minya sdelali.", audio: "so-much-for-me")
    ]
}

var favoriteData: [[Bool]] = [
    [false, false, false, false, false, false, false, false, false, false],
    [false, false, false, false, false],
    [false, false, false, false],
    [false, false, false, false, false],
    [false, false, false, false, false, false, false],
    [false, false, false, false, false],
    [false, false, false, false],
    [false, false, false, false],
    [false, false, false, false, false, false],
    [false, false, false],
    [false, false, false, false],
    [false, false, false, false, false],
    [false, false, false, false, false],
    [false, false, false, false, false, false],
    [false, false, false, false],
    [false, false, false, false, false],
    [false, false, false],
    [false, false, false, false, false, false],
    [false, false, false, false, false, false],
    [false, false, false, false, false]
]

