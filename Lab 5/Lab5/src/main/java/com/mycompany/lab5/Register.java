/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.lab5;

/**
 *
 * @author Zahier
 */
public class Register {
    
    private String icNo, name;
    private int trainingType, paxNo, isStudent;

    public Register() {
    }

    public Register(String icNo, String name, int trainingType, int paxNo, int isStudent) {
        this.icNo = icNo;
        this.name = name;
        this.trainingType = trainingType;
        this.paxNo = paxNo;
        this.isStudent = isStudent;
    }

    public String getIcNo() {
        return icNo;
    }

    public void setIcNo(String icNo) {
        this.icNo = icNo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getTrainingType() {
        return trainingType;
    }

    public void setTrainingType(int trainingType) {
        this.trainingType = trainingType;
    }

    public int getPaxNo() {
        return paxNo;
    }

    public void setPaxNo(int paxNo) {
        this.paxNo = paxNo;
    }

    public int getIsStudent() {
        return isStudent;
    }

    public void setIsStudent(int isStudent) {
        this.isStudent = isStudent;
    }
    
    public String getTrainingTypeStr() {
        switch (getTrainingType()) {
            case 1:
                return "C++ Training";

            case 2:
                return "Java for Beginner";

            case 3:
                return "HTML5";

            case 4:
                return "Java EEE";

            case 5:
                return "Android Programming";

            default:
                return "";
        }
    }
    
    public String getIsStudentStr() {
        if (getIsStudent() == 1) {
            return "Yes";
        }
        else {
            return "No";
        }
    }
    
    public double getAmount() {
        double amount;
        
        switch (getTrainingType()) {
            case 1:
                amount = 3000 * getPaxNo();
                break;

            case 2:
                amount = 3000 * getPaxNo();
                break;

            case 3:
                amount = 2800 * getPaxNo();
                break;

            case 4:
                amount = 5500 * getPaxNo();
                break;

            case 5:
                amount = 3200 * getPaxNo();
                break;

            default:
                amount = 0;
        }
        
        if (getIsStudent() == 1) {
            amount *= 0.9;
        }       
        return amount;
    }   
}