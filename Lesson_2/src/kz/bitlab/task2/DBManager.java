package kz.bitlab.task2;

import java.util.ArrayList;

public class DBManager {
    private static ArrayList<News> news = new ArrayList<>();

    static {
        news.add(new News("Profile: Brazil's new Culture Minister Margareth Menezes", "After what some Brazilians called ‘a nightmare’ period, Margareth Menezes appointment as Culture Minister is for many a welcome breath of fresh air into a sector that's been neglected during Jair Bolsonaro's presidency.", "Ainabek Olzhas", "culture"));
        news.add(new News("Korean pop culture goes on display at London museum", "An exhibition highlighting the rise of the worldwide influence of South Korean culture is on at the Victoria and Albert (V&A) museum in London.", "Ainabek Zhandos", "culture"));
        news.add(new News("Earth, Wind and Fire's iconic drummer Fred White dies aged 67", "The multiple Grammy award winning musician was a founding member of the band which enjoyed global success during the 1970s and '80s with several soul and RnB hits.", "Ilyas Zhyanishev", "culture"));
        news.add(new News("PSG held as Balogun scores late leveller for Reims", "On-loan Arsenal striker Folarin Balogun scores a dramatic stoppage-time equaliser for Reims against 10-man Paris St-Germain.", "Rugby Union", "sport"));
        news.add(new News("Paul still has 'doubts' over planned Fury fight", "YouTuber Jake Paul says he still worries his planned fight against not necessarily reliable Tommy Fury may not happen following two postponements.", "Adam Holmes", "sport"));
        news.add(new News("How To Watch Super Bowl Halftime Show 2023 Online And Stream Rihanna's Performance Free From Anywhere", "Rihanna gets back to work, work, work, work, work after 5 years. Here's how to watch Super Bowl Halftime Show online from anywhere.", "Adreon Pattersen", "cinema"));
        news.add(new News("How To Watch Happy Valley Season 3 Episode 5 Online On Catch-Up From Anywhere", "Tommy is on the run as Catherine's worst nightmare is realised. Catch up on the penultimate episode and watch Happy Valley Season 3 Episode 5 from anywhere.", "Dirk Libbey", "cinema"));
        news.add(new News("HBO's The Last Of Us Creators Explain Why They Made Big Changes To Bill And Frank's Story For TV", "HBO's The Last of Us swiftly diverted from the video game for Bill and Frank's story, and the co-creators explained why they went that route.", "Ainabek Olzhas", "cinema"));
        news.add(new News("90 Day Fiancé: The Other Way Season 4 Just Premiered, And One Couple Is Already Headed Toward Disaster", "We've just gotten through the premiere of 90 Day Fiancé: The Other Way Season 4, and there's already one couple setting itself up for a terrible situation.", "Adam Holmes", "cinema"));
    }

    public static ArrayList<News> getNews() {
        return news;
    }
}
