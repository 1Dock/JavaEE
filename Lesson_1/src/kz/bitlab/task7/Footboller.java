package kz.bitlab.task7;

public class Footboller {
    private String name;
    private String surname;
    private String club;
    private int salary;
    private int price;


    public Footboller(String name, String surname, String club, int salary, int price) {
        this.name = name;
        this.surname = surname;
        this.club = club;
        this.salary = salary;
        this.price = price;
    }

    public Footboller() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getClub() {
        return club;
    }

    public void setClub(String club) {
        this.club = club;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
}
