package kz.bitlab.task3;

public class Task {
    private Long id;
    private String name;
    private String comment;
    private String date;
    private String success;

    public Task(String name, String comment, String date, String success) {
        this.name = name;
        this.comment = comment;
        this.date = date;
        this.success = success;
    }

    public Task() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getSuccess() {
        return success;
    }

    public void setSuccess(String success) {
        this.success = success;
    }
}