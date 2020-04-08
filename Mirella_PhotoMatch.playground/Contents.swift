//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport


class TelaInicial: UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
                
        
        let titulo = UILabel()
        titulo.frame = CGRect(x: 90, y: 150, width: 200, height: 40)
        titulo.text = "PhotoMatch!"
        titulo.textAlignment = .center
        titulo.textColor = .darkGray
        titulo.highlightedTextColor = .cyan
        
        let botaoComoJogar = UIButton()
        botaoComoJogar.frame = CGRect(x: 120, y:450, width: 150, height: 40)
        botaoComoJogar.layer.cornerRadius = 15
        botaoComoJogar.setTitle("Como jogar", for: .normal)
        botaoComoJogar.backgroundColor = .systemTeal
        botaoComoJogar.setTitleColor(.white, for: .normal)
        botaoComoJogar.setTitleShadowColor(.systemGray2, for: .normal)
        botaoComoJogar.addTarget(nil, action: #selector(tocouBotaoTutorial), for: .touchUpInside)
        
        view.addSubview(titulo)
        view.addSubview(botaoComoJogar)
        self.view = view
    }
    
    @IBAction func tocouBotaoTutorial() {
        present(telaDeTutorial, animated: true, completion: nil)
    }
    
}

class TelaDeTutorial: UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .systemGray
        
        let botaoInicio = UIButton()
        botaoInicio.frame = CGRect(x: 120, y:450, width: 150, height: 40)
        botaoInicio.layer.cornerRadius = 15
        botaoInicio.setTitle("Começar!", for: .normal)
        botaoInicio.backgroundColor = .systemTeal
        botaoInicio.setTitleColor(.white, for: .normal)
        botaoInicio.setTitleShadowColor(.systemGray2, for: .normal)
        botaoInicio.addTarget(nil, action: #selector(tocouBotaoInicio), for: .touchUpInside)
        
        view.addSubview(botaoInicio)
        self.view = view
    }
    
    @IBAction func tocouBotaoInicio() {
        present(telaDeJogo, animated: true, completion: nil)
    }
    
}

class TelaDeJogo: UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .systemGray
        
        self.view = view
    }
}

let telaInicial = TelaInicial(screenType: .ipadPro12_9, isPortrait: false)
let telaDeTutorial = TelaDeTutorial(screenType: .ipadPro12_9, isPortrait: false)
let telaDeJogo = TelaDeJogo(screenType: .ipadPro12_9, isPortrait: false)

// Present the view controller in the Live View window
PlaygroundPage.current.liveView = telaInicial


//Ana - Na primeira tela
//let navigation = UINavigationController(screenType: .ipad, isPortrait: false) navigation.pushViewController (catalogo, animated: false) navigation.navigationBar.isHidden =  false  PlaygroundPage.current.liveView = navigation.scale(to: 0.7)
