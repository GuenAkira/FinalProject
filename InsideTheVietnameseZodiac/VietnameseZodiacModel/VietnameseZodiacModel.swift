//
//  RatModel.swift
//  InsideTheVietnameseZodiac
//
//  Created by Joseph Nguyen on 5/2/24.
//

import Foundation
import SwiftUI

struct VietnameseZodiacModel : Identifiable {
    var id = UUID()
    var title : String
    var element : [ZodiacElement]
}

struct ZodiacElement : Identifiable {
    var id = UUID()
    var name : String

}

struct ZodiacImage : Identifiable {
    var id = UUID()
    var imageName : String
}

// IMAGE
let ratPhoto = ZodiacImage(imageName: "rat")
let buffaloPhoto = ZodiacImage(imageName: "buffalo")
let tigerPhoto = ZodiacImage(imageName: "tiger")
let catPhoto = ZodiacImage(imageName: "cat")
let dragonPhoto = ZodiacImage(imageName: "dragon")
let snakePhoto = ZodiacImage(imageName: "snake")
let horsePhoto = ZodiacImage(imageName: "horse")
let goatPhoto = ZodiacImage(imageName: "goat")
let monkeyPhoto = ZodiacImage(imageName: "monkey")
let roosterPhoto = ZodiacImage(imageName: "rooster")
let dogPhoto = ZodiacImage(imageName: "dog")
let pigPhoto = ZodiacImage(imageName: "pig")

// POSITIVE TRAIT
let intelligent = ZodiacElement(name: "Intelligent")
let charming = ZodiacElement(name: "Charming")
let creative = ZodiacElement(name: "Creative")
let generous = ZodiacElement(name: "Generous")
let survialist = ZodiacElement(name: "Survivalist")
let meticulous = ZodiacElement(name: "Meticulous")
let strength = ZodiacElement(name: "Strength")
let perseverance = ZodiacElement(name: "perseverance")
let bornLeader = ZodiacElement(name: "Born Leader")
let dependable = ZodiacElement(name: "Dependable")
let captivating = ZodiacElement(name: "Captivating")
let rebellious = ZodiacElement(name: "Rebellious")
let powerful = ZodiacElement(name: "Powerful")
let passionate = ZodiacElement(name: "Passionate")
let goodJudgement = ZodiacElement(name: "Good judgment")
let cautious = ZodiacElement(name: "Cautious")
let conservative = ZodiacElement(name: "Conservative")
let talented = ZodiacElement(name: "Talented")
let ambition = ZodiacElement(name: "Ambition")
let confident = ZodiacElement(name: "Confident")
let brave = ZodiacElement(name: "Brave")
let ambitious = ZodiacElement(name: "Ambitious")
let strong = ZodiacElement(name: "Strong")
let direct = ZodiacElement(name: "Direct")
let patient = ZodiacElement(name: "Patient")
let calculating = ZodiacElement(name: "Calculating")
let quietlyPowerful = ZodiacElement(name: "Quietly Powerful")
let deepThinker = ZodiacElement(name: "Deep Thinker")
let graceful = ZodiacElement(name: "Graceful")
let artistic = ZodiacElement(name: "Artistic")
let engaging = ZodiacElement(name: "Engaging")
let assertive = ZodiacElement(name: "Assertive")
let popular = ZodiacElement(name: "Popular")
let magnetic = ZodiacElement(name: "Magnetic")
let animated = ZodiacElement(name: "Animated")
let articulate = ZodiacElement(name: "Articulate")
let observant = ZodiacElement(name: "Observant")
let innovative = ZodiacElement(name: "Innovative")
let takeActionWhenNeeded = ZodiacElement(name: "Take Action When Needed")
let energy = ZodiacElement(name: "Energy")
let clever = ZodiacElement(name: "Clever")
let resourceful = ZodiacElement(name: "Resourceful")
let persuasive = ZodiacElement(name: "Persuasive")
let motivator = ZodiacElement(name: "Motivator")
let attentive = ZodiacElement(name: "Attentive")
let determined = ZodiacElement(name: "Determined")
let neat = ZodiacElement(name: "Neat")
let loyal = ZodiacElement(name: "Loyal")
let unselfish = ZodiacElement(name: "Unselfish")
let openMinded = ZodiacElement(name: "Open-Minded")
let strongWill = ZodiacElement(name: "Strong Will")
let gentle = ZodiacElement(name: "Gentle")
let sincere = ZodiacElement(name: "Sincere")
let honest = ZodiacElement(name: "Honest")
let hardWorker = ZodiacElement(name: "Hard-Worker")
let trusting = ZodiacElement(name: "Trusting")

// POSITIVE
let ratPositiveTrait = VietnameseZodiacModel(title: "Positive", element: [intelligent, charming, creative, generous, survialist, meticulous])
let buffaloPositiveTrait = VietnameseZodiacModel(title: "Positive", element: [strength, perseverance, intelligent, bornLeader, dependable])
let tigerPositiveTrait = VietnameseZodiacModel(title: "Positive", element: [captivating, rebellious, intelligent, powerful, passionate])
let catPositiveTrait = VietnameseZodiacModel(title: "Positive", element: [goodJudgement, creative, cautious, conservative, talented, ambition])
let dragonPositiveTrait = VietnameseZodiacModel(title: "Positive", element: [confident, brave, ambitious, strong, direct, passionate])
let snakePositiveTrait = VietnameseZodiacModel(title: "Positive", element: [patient, calculating, quietlyPowerful, deepThinker, graceful])
let horsePositiveTrait = VietnameseZodiacModel(title: "Postive", element: [artistic, engaging, assertive, popular, magnetic])
let goatPositiveTrait = VietnameseZodiacModel(title: "Positive", element: [animated, creative, articulate, artistic, observant, innovative])
let monkeyPositiveTrait = VietnameseZodiacModel(title: "Positive", element: [takeActionWhenNeeded, energy, clever, resourceful, persuasive, motivator])
let roosterPositiveTrait = VietnameseZodiacModel(title: "Positive", element: [attentive, determined, brave, confident, neat, meticulous])
let dogPositiveTrait = VietnameseZodiacModel(title: "Positive", element: [loyal, dependable, unselfish, intelligent, openMinded])
let pigPositiveTrait = VietnameseZodiacModel(title: "Positive", element: [strongWill, gentle, sincere, honest, loyal, hardWorker, trusting])

// NEGATIVE TRAIT
let manipulative = ZodiacElement(name: "Manipulative")
let vindicative = ZodiacElement(name: "Vindicative")
let selfDestructive = ZodiacElement(name: "Self-Destructive")
let envious = ZodiacElement(name: "Envious")
let critical = ZodiacElement(name: "Critical")
let ruthless = ZodiacElement(name: "Ruthless")
let scheming = ZodiacElement(name: "Scheming")
let stubborn = ZodiacElement(name: "Stubborn")
let hotTempered = ZodiacElement(name: "Hot-Tempered")
let narrowMinded = ZodiacElement(name: "Narrow-Minded")
let materialistic = ZodiacElement(name: "Masterialistic")
let demanding = ZodiacElement(name: "Demanding")
let restless = ZodiacElement(name: "Restless")
let reckless = ZodiacElement(name: "Reckless")
let impatient = ZodiacElement(name: "Impatient")
let quickTempered = ZodiacElement(name: "Quick-Tempered")
let selfish = ZodiacElement(name: "Selfish")
let aggressive = ZodiacElement(name: "Aggressive")
let superficial = ZodiacElement(name: "Superficial")
let selfIndulgent = ZodiacElement(name: "Self-Indulgent")
let moodSwings = ZodiacElement(name: "Mood Swings")
let tactless = ZodiacElement(name: "Tactless")
let arrogant = ZodiacElement(name: "Arrogant")
let tyrannical = ZodiacElement(name: "Tyrannical")
let violent = ZodiacElement(name: "Violent")
let badCommunication = ZodiacElement(name: "Bad Communication")
let selfDoubt = ZodiacElement(name: "Self-Doubt")
let distrustful = ZodiacElement(name: "Distrustful")
let narcissistic = ZodiacElement(name: "Narcissistic")
let cold = ZodiacElement(name: "Cold")
let childish = ZodiacElement(name: "Childish")
let anxious = ZodiacElement(name: "Anxious")
let rude = ZodiacElement(name: "Rude")
let gullible = ZodiacElement(name: "Gullible")
let indecisive = ZodiacElement(name: "Indecisive")
let passive = ZodiacElement(name: "Passive")
let worrier = ZodiacElement(name: "Worrier")
let pessimistic = ZodiacElement(name: "Pessimistic")
let snobbish = ZodiacElement(name: "Snobbish")
let cunning = ZodiacElement(name: "Cunning")
let jealous = ZodiacElement(name: "Jealous")
let egotistical = ZodiacElement(name: "egotistical")
let cynical = ZodiacElement(name: "Cynical")
let lazy = ZodiacElement(name: "Lazy")
let judgmental = ZodiacElement(name: "Judgmental")
let quarrelsome = ZodiacElement(name: "Quarrelsome")
let naive = ZodiacElement(name: "Naive")
let fatalistic = ZodiacElement(name: "Fatalistic")

// NEGATIVE
let ratNegativeTrait = VietnameseZodiacModel(title: "Negative", element: [manipulative, vindicative, selfDestructive, envious, critical, ruthless, scheming])
let buffaloNegativeTrait = VietnameseZodiacModel(title: "Negative", element: [stubborn, hotTempered, narrowMinded, materialistic, demanding])
let tigerNegativeTrait = VietnameseZodiacModel(title: "Negative", element: [restless, reckless, impatient, quickTempered, selfish, aggressive])
let catNegativeTrait = VietnameseZodiacModel(title: "Negative", element: [superficial, selfIndulgent, stubborn, moodSwings])
let dragonNegativeTrait = VietnameseZodiacModel(title: "Negative", element: [tactless, arrogant, demanding, tyrannical, violent])
let snakeNegativeTrait = VietnameseZodiacModel(title: "Negative", element: [badCommunication, selfDoubt, distrustful, narcissistic, cold])
let horseNegativeTrait = VietnameseZodiacModel(title: "Negative", element: [childish, anxious, rude, gullible, rebellious])
let goatNegativeTrait = VietnameseZodiacModel(title: "Negative", element: [indecisive, passive, worrier, pessimistic])
let monkeyNegativeTrait = VietnameseZodiacModel(title: "Negative", element: [arrogant, selfish, snobbish, cunning, jealous])
let roosterNegativeTrait = VietnameseZodiacModel(title: "Negative", element: [egotistical, critical])
let dogNegativeTrait = VietnameseZodiacModel(title: "Negative", element: [cynical, lazy, judgmental, pessimistic, stubborn, quarrelsome])
let pigNegativeTrait = VietnameseZodiacModel(title: "Negative", element: [materialistic, naive, fatalistic, selfIndulgent])

// TRAITS
let ratTraits = [ratPositiveTrait, ratNegativeTrait]
let buffaloTraits = [buffaloPositiveTrait, buffaloNegativeTrait]
let tigerTraits = [tigerPositiveTrait, tigerNegativeTrait]
let catTraits = [catPositiveTrait, catNegativeTrait]
let dragonTraits = [dragonPositiveTrait, dragonNegativeTrait]
let snakeTraits = [snakePositiveTrait, snakeNegativeTrait]
let horseTraits = [horsePositiveTrait, horseNegativeTrait]
let goatTraits = [goatPositiveTrait, goatNegativeTrait]
let monkeyTraits = [monkeyPositiveTrait, monkeyNegativeTrait]
let roosterTraits = [roosterPositiveTrait, roosterNegativeTrait]
let dogTraits = [dogPositiveTrait, dogNegativeTrait]
let pigTraits = [pigPositiveTrait, pigNegativeTrait]

// COMPATIBILITY
let rat = ZodiacElement(name: "Rat")
let buffalo = ZodiacElement(name: "Buffalo")
let tiger = ZodiacElement(name: "Tiger")
let cat = ZodiacElement(name: "Cat")
let dragon = ZodiacElement(name: "Dragon")
let snake = ZodiacElement(name: "Snake")
let horse = ZodiacElement(name: "Horse")
let goat = ZodiacElement(name: "Goat")
let monkey = ZodiacElement(name: "Monkey")
let rooster = ZodiacElement(name: "Rooster")
let dog = ZodiacElement(name: "Dog")
let pig = ZodiacElement(name: "Pig")

// MOST COMPATIBLE
let ratMostCompatible = VietnameseZodiacModel(title: "Most Compatible", element: [buffalo, dragon, monkey])
let buffaloMostCompatible = VietnameseZodiacModel(title: "Most Compatible", element: [rat, snake, rooster])
let tigerMostCompatible = VietnameseZodiacModel(title: "Most Compatible", element: [dragon, horse, dog])
let catMostCompatible = VietnameseZodiacModel(title: "Most Compatible", element: [goat, pig])
let dragonMostCompatible = VietnameseZodiacModel(title: "Most Compatible", element: [tiger, monkey, rooster])
let snakeMostCompatible = VietnameseZodiacModel(title: "Most Compatible", element: [buffalo, rooster])
let horseMostCompatible = VietnameseZodiacModel(title: "Most Compatible", element: [tiger, goat, pig])
let goatMostCompatible = VietnameseZodiacModel(title: "Most Compatible", element: [cat, horse, pig])
let monkeyMostCompatible = VietnameseZodiacModel(title: "Most Compatible", element: [rat, dragon])
let roosterMostCompatible = VietnameseZodiacModel(title: "Most Compatible", element: [buffalo, dragon, snake])
let dogMostCompatible = VietnameseZodiacModel(title: "Most Compatible", element: [tiger, horse])
let pigMostCompatible = VietnameseZodiacModel(title: "Most Compatible", element: [cat, goat])

// COMPATIBLE
let ratCompatible = VietnameseZodiacModel(title: "Compatible", element: [rat, snake, pig, dog, tiger])
let buffaloCompatible = VietnameseZodiacModel(title: "Compatible", element: [buffalo, tiger, cat, dragon, monkey, pig])
let tigerCompatible = VietnameseZodiacModel(title: "Compatible", element: [rat, buffalo, tiger, goat, rooster, pig])
let catCompatible = VietnameseZodiacModel(title: "Compatible", element: [buffalo, tiger, cat, dragon, snake, horse, monkey])
let dragonCompatible = VietnameseZodiacModel(title: "Compatible", element: [rat, buffalo, cat, dragon, snake, horse, goat, pig])
let snakeCompatible = VietnameseZodiacModel(title: "Compatible", element: [rat, cat, dragon, snake, horse, goat, monkey, dog])
let horseCompatible = VietnameseZodiacModel(title: "Compatible", element: [cat, dragon, snake, horse, monkey, rooster, pig])
let goatCompatible = VietnameseZodiacModel(title: "Compatible", element: [rat, tiger, dragon, snake, goat, monkey, rooster])
let monkeyCompatible = VietnameseZodiacModel(title: "Compatible", element: [buffalo, cat, snake, horse, goat, monkey, rooster, dog])
let roosterCompatible = VietnameseZodiacModel(title: "Compatible", element: [rat, tiger, horse, goat, monkey, rooster, dog, pig])
let dogCompatible = VietnameseZodiacModel(title: "Compatible", element: [rat, snake, goat, monkey, rooster, dog, pig])
let pigCompatible = VietnameseZodiacModel(title: "Compatible", element: [rat, buffalo, tiger, dragon, horse, rooster, dog, pig])

// LEAST COMPATIBLE
let ratLeastCompatible = VietnameseZodiacModel(title: "Least Compatible", element: [cat, horse])
let buffaloLeastCompatible = VietnameseZodiacModel(title: "Least Compatible", element: [horse, goat, dog])
let tigerLeastCompatible = VietnameseZodiacModel(title: "Least Comptatible", element: [snake, monkey])
let catLeastCompatible = VietnameseZodiacModel(title: "Least Compatible", element: [rat, rooster, dog])
let dragonLeastCompatible = VietnameseZodiacModel(title: "Least Compatible", element: [dog])
let snakeLeastCompatible = VietnameseZodiacModel(title: "Least Compatible", element: [tiger, pig])
let horseLeastCompatible = VietnameseZodiacModel(title: "Least Compatible", element: [rat, buffalo])
let goatLeastCompatible = VietnameseZodiacModel(title: "Least Compatible", element: [buffalo])
let monkeyLeastCompatible = VietnameseZodiacModel(title: "Least Compatible", element: [tiger, pig])
let roosterLeastCompatible = VietnameseZodiacModel(title: "Least Compatible", element: [cat])
let dogLeastCompatible = VietnameseZodiacModel(title: "Least Compatible", element: [buffalo, cat, dragon])
let pigLeastCompatible = VietnameseZodiacModel(title: "Least Compatible", element: [snake, monkey])

// COMPATIBILITY LIST
let ratCompatibility = [ratMostCompatible, ratCompatible, ratLeastCompatible]
let buffaloCompatibility = [buffaloMostCompatible, buffaloCompatible, buffaloLeastCompatible]
let tigerCompatibility = [tigerMostCompatible, tigerCompatible, tigerLeastCompatible]
let catCompatibility = [catMostCompatible, catCompatible, catLeastCompatible]
let dragonCompatibility = [dragonMostCompatible, dragonCompatible, dragonLeastCompatible]
let snakeCompatibility = [snakeMostCompatible, snakeCompatible, snakeLeastCompatible]
let horseCompatibility = [horseMostCompatible, horseCompatible, horseLeastCompatible]
let goatCompatibility = [goatMostCompatible, goatCompatible, goatLeastCompatible]
let monkeyCompatibility = [monkeyMostCompatible, monkeyCompatible, monkeyLeastCompatible]
let roosterCompatibility = [roosterMostCompatible, roosterCompatible, roosterLeastCompatible]
let dogCompatibility = [dogMostCompatible, dogCompatible, dogLeastCompatible]
let pigCompatibility = [pigMostCompatible, pigCompatible, pigLeastCompatible]
