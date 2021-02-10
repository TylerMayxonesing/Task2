//
//  SecondViewController.swift
//  Task2
//
//  Created by Tyler on 2/9/21.
//

import Charts
import UIKit

class SecondViewController: UIViewController, ChartViewDelegate {

    var lineChart = LineChartView()

    override func viewDidLoad() {
        super.viewDidLoad()
        lineChart.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        lineChart.frame = CGRect(x:0, y:0,
                                width: self.view.frame.size.width,
                                height: self.view.frame.size.width)
        lineChart.center = view.center
        view.addSubview(lineChart)
        
        // Dumby Data
        var entries = [ChartDataEntry]()
        
        
        entries.append(BarChartDataEntry(x: Double(0), y: Double(2)))
        entries.append(BarChartDataEntry(x: Double(1), y: Double(20)))
        entries.append(BarChartDataEntry(x: Double(2), y: Double(10)))
        entries.append(BarChartDataEntry(x: Double(3), y: Double(7)))
        entries.append(BarChartDataEntry(x: Double(4), y: Double(5)))
        entries.append(BarChartDataEntry(x: Double(5), y: Double(16)))
        entries.append(BarChartDataEntry(x: Double(6), y: Double(9)))
        entries.append(BarChartDataEntry(x: Double(7), y: Double(6)))
        entries.append(BarChartDataEntry(x: Double(8), y: Double(15)))
        entries.append(BarChartDataEntry(x: Double(9), y: Double(19)))
        entries.append(BarChartDataEntry(x: Double(10), y: Double(12)))
        
            
        
                
        let set = LineChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.pastel()
        
        let data = LineChartData(dataSet: set)
        lineChart.data = data
    }

}
