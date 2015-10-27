
package com.jetty.beans;

/**
 * Created by lh on 15-10-27.
 */

public class Question {
    private int id;
    private String question;
    private String anwser;
    private int pid;

    public void setId(int id) {
        this.id = id;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public void setAnwser(String anwser) {
        this.anwser = anwser;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public int getId() {
        return id;
    }

    public String getQuestion() {
        return question;
    }

    public String getAnwser() {
        return anwser;
    }

    public int getPid() {
        return pid;
    }
}

