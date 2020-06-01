//
//  ViewController.swift
//  rotateView
//
//  Created by Ngoduc on 5/31/20.
//  Copyright © 2020 Ngoduc. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    @IBOutlet weak var pointSum: UILabel!
    @IBOutlet weak var ketquaLable: UILabel!
    @IBOutlet weak var kim: UIImageView!
    @IBOutlet weak var earth: UIImageView!
    
    var audioPlayer: AVAudioPlayer!
    var number: CGFloat!
    var sum = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(named: "bg")
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(animation)))
        self.earth.transform = CGAffineTransform(rotationAngle: -7.5 * CGFloat(M_PI / 180))
    }
    @objc  func animation(){
        number = CGFloat(Int.random(in: 1...24))
        UIView.animate(withDuration: 2, animations: {
            self.earth.transform = CGAffineTransform.identity
            self.earth.transform = CGAffineTransform(rotationAngle: -180 * CGFloat(M_PI / 180))
        }) { (_) in
            self.earth.transform = CGAffineTransform.identity
            self.earth.transform = CGAffineTransform(rotationAngle: -180 * CGFloat(M_PI / 180))
        }
        UIView.animate(withDuration: 4, animations: {
            self.earth.transform = CGAffineTransform.identity
            self.earth.transform = CGAffineTransform(rotationAngle: -180 * CGFloat(M_PI / 180))
            
        }) { (true) in
            UIView.animate(withDuration: 5, animations: {
                self.earth.transform = CGAffineTransform(rotationAngle: -(180 - (self.number*15)) * CGFloat(M_PI / 180))
                if self.number == 24 {
                    self.ketquaLable.text = "Chúc mừng bạn đã có 900 điểm"
                    self.ketquaLable.textColor = .green
                    self.sum += 900
                    self.pointSum.text = "Tổng điểm : \(self.sum)"
                    self.musicOK()
                }
            }) { (_) in
                self.ketqua(number: self.number)
            }
            
        }
        
        
    }
    func musicOK(){
        // setting up url for your soundtrack
            let soundURL = Bundle.main.url(forResource: "ok1", withExtension: "mp3")
            do {
        // setting up audio player to play your sound
                audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
            } catch  {
        // in case any errors occur
                print(error)
            }

        // playing your audio file
            audioPlayer.play()
    }
    func musicNoK(){
        // setting up url for your soundtrack
            let soundURL = Bundle.main.url(forResource: "wrong", withExtension: "mp3")
            do {
        // setting up audio player to play your sound
                audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
            } catch  {
        // in case any errors occur
                print(error)
            }

        // playing your audio file
            audioPlayer.play()
    }
    func ketqua(number: CGFloat){
        switch number {
        case 1:
            self.ketquaLable.text = "Chúc mừng bạn đã có 300 điểm"
            self.ketquaLable.textColor = .green
            sum += 300
            pointSum.text = "Tổng điểm : \(sum)"
            musicOK()
        case 2:
            self.ketquaLable.text = "Rất tiếc bạn bị mất lượt"
            self.ketquaLable.textColor = .red
            musicNoK()
        case 3:
            self.ketquaLable.text = "Chúc mừng bạn đã có 900 điểm"
            self.ketquaLable.textColor = .green
            sum += 900
            pointSum.text = "Tổng điểm : \(sum)"
            musicOK()
        case 4:
            self.ketquaLable.text = "Chúc mừng bạn đã có 100 điểm"
            self.ketquaLable.textColor = .green
            sum += 100
            pointSum.text = "Tổng điểm : \(sum)"
            musicOK()
        case 5:
            self.ketquaLable.text = "Chúc mừng bạn đã có phần thưởng"
            self.ketquaLable.textColor = .yellow
            musicOK()
            
        case 6:
            self.ketquaLable.text = "Chúc mừng bạn đã có 400 điểm"
            self.ketquaLable.textColor = .green
            sum += 400
            pointSum.text = "Tổng điểm : \(sum)"
            musicOK()
        case 7:
            self.ketquaLable.text = "Chúc mừng bạn đã có 300 điểm"
            self.ketquaLable.textColor = .green
            sum += 300
            pointSum.text = "Tổng điểm : \(sum)"
            musicOK()
        case 8:
            self.ketquaLable.text = "Chúc mừng bạn đã có 800 điểm"
            self.ketquaLable.textColor = .green
            sum += 800
            pointSum.text = "Tổng điểm : \(sum)"
            musicOK()
        case 9:
            self.ketquaLable.text = "Chúc mừng bạn đã có may mắn"
            self.ketquaLable.textColor = .orange
            musicOK()
        case 10:
            self.ketquaLable.text = "Chúc mừng bạn đã có 100 điểm"
            self.ketquaLable.textColor = .green
            sum += 100
            pointSum.text = "Tổng điểm : \(sum)"
            musicOK()
        case 11:
            self.ketquaLable.text = "Chúc mừng bạn đã có 900 điểm"
            self.ketquaLable.textColor = .green
            sum += 900
            pointSum.text = "Tổng điểm : \(sum)"
            musicOK()
        case 12:
            self.ketquaLable.text = "Chúc mừng bạn đã có 200 điểm"
            self.ketquaLable.textColor = .green
            sum += 200
            pointSum.text = "Tổng điểm : \(sum)"
            musicOK()
        case 13:
            self.ketquaLable.text = "Rất tiếc bạn bị chia đôi"
            self.ketquaLable.textColor = .red
            sum /= 2
            pointSum.text = "Tổng điểm : \(sum)"
            musicNoK()
        case 14:
            self.ketquaLable.text = "Chúc mừng bạn đã có 500 điểm"
            self.ketquaLable.textColor = .green
            sum += 500
            pointSum.text = "Tổng điểm : \(sum)"
            musicOK()
        case 15:
            self.ketquaLable.text = "Chúc mừng bạn đã có 100 điểm"
            self.ketquaLable.textColor = .green
            sum += 100
            pointSum.text = "Tổng điểm : \(sum)"
            musicOK()
        case 16:
            self.ketquaLable.text = "Rất tiếc bạn bị mất điểm"
            self.ketquaLable.textColor = .red
            sum = 0
            pointSum.text = "Tổng điểm : \(sum)"
            musicNoK()
        case 17:
            self.ketquaLable.text = "Chúc mừng bạn đã có 800 điểm"
            self.ketquaLable.textColor = .green
            sum += 800
            pointSum.text = "Tổng điểm : \(sum)"
            musicOK()
        case 18:
            self.ketquaLable.text = "Chúc mừng bạn đã có 200 điểm"
            self.ketquaLable.textColor = .green
            sum += 200
            pointSum.text = "Tổng điểm : \(sum)"
            musicOK()
        case 19:
            self.ketquaLable.text = "Chúc mừng bạn đã có 700 điểm"
            self.ketquaLable.textColor = .green
            sum += 700
            pointSum.text = "Tổng điểm : \(sum)"
            musicOK()
        case 20:
            self.ketquaLable.text = "Chúc mừng bạn đã có 100 điểm"
            self.ketquaLable.textColor = .green
            sum += 100
            pointSum.text = "Tổng điểm : \(sum)"
            musicOK()
        case 21:
            self.ketquaLable.text = "Chúc mừng bạn đã được gấp đôi"
            self.ketquaLable.textColor = .orange
            sum *= 2
            pointSum.text = "Tổng điểm : \(sum)"
            musicOK()
        case 22:
            self.ketquaLable.text = "Chúc mừng bạn đã có 500 điểm"
            self.ketquaLable.textColor = .green
            sum += 500
            pointSum.text = "Tổng điểm : \(sum)"
            musicOK()
        case 23:
            self.ketquaLable.text = "Chúc mừng bạn đã có 100 điểm"
            self.ketquaLable.textColor = .green
            sum += 100
            pointSum.text = "Tổng điểm : \(sum)"
            musicOK()
        case 24:
            self.ketquaLable.text = "Chúc mừng bạn đã có 900 điểm"
            self.ketquaLable.textColor = .green
            sum += 900
            pointSum.text = "Tổng điểm : \(sum)"
            musicOK()
            
        default:
            print("không có kết quả")
        }
    }
    
}

