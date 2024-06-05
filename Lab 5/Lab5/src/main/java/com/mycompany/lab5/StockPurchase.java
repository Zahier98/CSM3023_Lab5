/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.lab5;

/**
 *
 * @author Zahier
 */
public class StockPurchase {
    
    private int numShares;
    private double pricePerShare;
    private double commissionRate;

    public StockPurchase() {
    }

    public StockPurchase(int numShares, double pricePerShare, double commissionRate) {
        this.numShares = numShares;
        this.pricePerShare = pricePerShare;
        this.commissionRate = commissionRate;
    }

    public int getNumShares() {
        return numShares;
    }

    public void setNumShares(int numShares) {
        this.numShares = numShares;
    }

    public double getPricePerShare() {
        return pricePerShare;
    }

    public void setPricePerShare(double pricePerShare) {
        this.pricePerShare = pricePerShare;
    }

    public double getCommissionRate() {
        return commissionRate;
    }
    
    public void setCommissionRate(double commissionRate) {
        this.commissionRate = commissionRate;
    }
    
    public double getCommissionRateAsPercentage() {
        if (commissionRate <= 1)
            return commissionRate * 100;
        else
            return commissionRate;
    }
    
    public double calculateStockCost() {
        return getNumShares() * getPricePerShare();
    }

    public double calculateCommission() {
      return calculateStockCost() * getCommissionRate();
    }

    public double calculateTotalCost() {
      return calculateStockCost() + calculateCommission();
    }
    
}