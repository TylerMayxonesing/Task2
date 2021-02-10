//
//  ViewController.swift
//  Graphs
//
//  Created by Tyler on 2/9/21.
//

import Charts
import UIKit

class ViewController: UIViewController, ChartViewDelegate {
    
    var barChart = BarChartView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        barChart.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        barChart.frame = CGRect(x:0, y:0,
                                width: self.view.frame.size.width,
                                height: self.view.frame.size.width)
        barChart.center = view.center
        
        view.addSubview(barChart)
        
        // Dumby Data
        var entries = [BarChartDataEntry]()
        
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
                
        let set = BarChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.colorful()
        
        let data = BarChartData(dataSet: set)
        barChart.data = data
    }


}

