
package com.jetty.beans;

/**
 * Created by lh on 15-10-27.
 */

public class Question {
    private int id;
    private String question;
    private String answer;
    private int pid;

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setQuestion(String question) {
        this.question = question;
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

    public int getPid() {
        return pid;
    }
}

