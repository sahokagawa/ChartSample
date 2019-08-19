//
//  ViewController.swift
//  ChartSampleProject
//
//  Created by 香川紗穂 on 2019/08/19.
//  Copyright © 2019 香川紗穂. All rights reserved.
//

import UIKit
import Charts

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lineChartView: LineChartView!
    
    let data: [Double] = [0,1,2,3,4,5,6,7,8,9,10]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        lineChartView.xAxis.gridColor = .clear
//        lineChartView.leftAxis.gridColor = .clear
//       lineChartView.rightAxis.gridColor = .clear
        
        lineChartView.xAxis.drawGridLinesEnabled = false
      
        
        var entry = [ChartDataEntry]()
        
        for (i,data) in data.enumerated() {
            let entryData = ChartDataEntry(x: Double(i), y: data)

            entry.append(entryData)
        }
        
        let dataSet = LineChartDataSet(entries: entry, label: "〇〇のグラフ")
        lineChartView.data  = LineChartData(dataSet: dataSet)

    }


}

