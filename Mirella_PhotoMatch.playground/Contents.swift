//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport
import AVFoundation


class TelaInicial: UIViewController {
    override func loadView() {
        let view = UIView()
        let bgColor = UIColor(red: 255, green: 252, blue: 249, alpha: 1)
        view.backgroundColor = bgColor
        
        //bg offwhite
        let imgBgPadrao = UIImage(named: "fundotela_padrao")
        let bgPadrao = UIImageView(image: imgBgPadrao)
        bgPadrao.frame = CGRect(x: 0, y: 0, width: 1024, height: 768)
        
        //frame bg
        let imgFrameRed = UIImage(named: "frame_bg")
        let frameRed = UIImageView(image: imgFrameRed)
        frameRed.frame = CGRect(x: 37, y: 37, width: 949, height: 690)
        
        //logo FotoLab
        let imgLogoFotoLab = UIImage(named: "Logo_FotoLab")
        let logoFotoLab = UIImageView (image: imgLogoFotoLab)
        logoFotoLab.frame = CGRect(x: 300, y: 100, width: 445, height: 317)
        
        //botão sobre
        let imgBotaoSobre = UIImage(named: "botao_sobre")
        let botaoSobre = UIButton()
        botaoSobre.setImage(imgBotaoSobre, for: .normal)
        botaoSobre.frame = CGRect(x: 380, y:450, width: 250, height: 75)
        botaoSobre.layer.cornerRadius = 15
        botaoSobre.setTitle("Sobre", for: .normal)
        botaoSobre.addTarget(nil, action: #selector(tocouBotaoSobre), for: .touchUpInside)
        
        //botão iniciar
        let imgBotaoIniciar = UIImage(named: "botao_iniciar")
        let botaoIniciar = UIButton()
        botaoIniciar.setImage(imgBotaoIniciar, for: .normal)
        botaoIniciar.frame = CGRect(x: 380, y: 550, width: 250, height: 75)
        botaoIniciar.layer.cornerRadius = 15
        botaoIniciar.setTitle("Iniciar", for: .normal)
        botaoIniciar.addTarget(nil, action: #selector(tocouBotaoIniciar), for: .touchUpInside)
        
        view.addSubview(bgPadrao)
        view.addSubview(logoFotoLab)
        view.addSubview(botaoSobre)
        view.addSubview(botaoIniciar)
        view.addSubview(frameRed)
        self.view = view
    }
    
    @IBAction func tocouBotaoSobre() {
        navigationController?.pushViewController(telaDeTutorial, animated: true)
        print("Chamou sobre")
    }
    
    @IBAction func tocouBotaoIniciar() {
        navigationController?.pushViewController(telaDaCamera, animated: true)
        print("Chamou sobre")
    }
    
}

class TelaDeTutorial: UIViewController {
    override func loadView() {
        let view = UIView()
        let bgColor = UIColor(red: 255, green: 252, blue: 249, alpha: 1)
        view.backgroundColor = bgColor
        
        //background provisório
        let imgBgSobre = UIImage(named: "iPad mini - 2")
        let bgSobre = UIImageView(image: imgBgSobre)
        bgSobre.frame = CGRect(x: 0, y: 0, width: 1024, height: 768)
        
        //botao início
        let imgBotaoIniciar = UIImage(named: "botao_iniciar")
        let botaoIniciar = UIButton()
        botaoIniciar.setImage(imgBotaoIniciar, for: .normal)
        botaoIniciar.frame = CGRect(x: 380, y: 550, width: 250, height: 75)
        botaoIniciar.layer.cornerRadius = 15
        botaoIniciar.setTitle("Iniciar", for: .normal)
        botaoIniciar.addTarget(nil, action: #selector(tocouBotaoInicio), for: .touchUpInside)
        
        view.addSubview(botaoIniciar)
        view.addSubview(bgSobre)
        self.view = view
    }
    
    @IBAction func tocouBotaoInicio() {
        navigationController?.pushViewController(telaDaCamera, animated: true)
        print("Chamou jogo")
    }
    
}

class TelaDaCamera: UIViewController {
    
    override func loadView() {
        let view = UIView()
        let bgColor = UIColor(red: 255, green: 252, blue: 249, alpha: 1)
        view.backgroundColor = bgColor
        
        //bg offwhite
        let imgBgPadrao = UIImage(named: "fundotela_padrao")
        let bgPadrao = UIImageView(image: imgBgPadrao)
        bgPadrao.frame = CGRect(x: 0, y: 0, width: 1024, height: 768)
        
        //frame vermelho foto
        let imgFrameRed = UIImage(named: "frame_bg")
        let frameRed = UIImageView(image: imgFrameRed)
        frameRed.frame = CGRect(x: 63, y: 153, width: 574, height: 410)
        
        //imagem base
        let arquivoImagemBase = UIImage(named: "frame_foto de referência")!
        let imagemBase = UIImageView (image: arquivoImagemBase)
        imagemBase.frame = CGRect (x: 80, y: 170, width: 540, height: 374.51)
        imagemBase.image = arquivoImagemBase.addFilter(filter: .Transfer)
        
        //descrição demonstrativa
        let imgDescDemo = UIImage(named: "descrição_demo")
        let descricaoDemo = UIImageView(image: imgDescDemo)
        descricaoDemo.frame = CGRect(x: 690, y: 140, width: 334, height: 462)
        
        //área dos botoes
        let imgFundoBotoes = UIImage(named: "fundo_botaofilme")
        let fundoBotoes = UIImageView (image: imgFundoBotoes)
        fundoBotoes.frame = CGRect(x: 710, y: 490, width: 315, height: 276)
        
        //representação kodak colorplus
        let imgFilmeColorplus = UIImage(named: "film_COLORPLUS 200")
        let filmeColorplus = UIImageView (image: imgFilmeColorplus)
        filmeColorplus.frame = CGRect(x: 820, y: 570, width: 117.3, height: 160)
        
        //botao direito
        let imgBotaoDireito = UIImage(named: "botao_direita")
        let botaoDireito = UIButton()
        botaoDireito.setImage(imgBotaoDireito, for: .normal)
        botaoDireito.frame = CGRect(x: 960, y:640, width: 24, height: 28.8)
        botaoDireito.layer.cornerRadius = 15
        botaoDireito.setTitle("Sobre", for: .normal)
        botaoDireito.addTarget(nil, action: #selector(tocouBotaoDireito), for: .touchUpInside)
        
        //botao esquerdo
        let imgBotaoEsquerdo = UIImage(named: "botao_esquerda")
        let botaoEsquerdo = UIButton()
        botaoEsquerdo.setImage(imgBotaoEsquerdo, for: .normal)
        botaoEsquerdo.frame = CGRect(x: 770, y:640, width: 24, height: 28.8)
        botaoEsquerdo.layer.cornerRadius = 15
        botaoEsquerdo.setTitle("Sobre", for: .normal)
        //botaoEsquerdo.addTarget(nil, action: #selector(tocouBotaoEsquerdo), for: .touchUpInside)
        
        //declarar as views
        view.addSubview(bgPadrao)
        view.addSubview(imagemBase)
        view.addSubview(descricaoDemo)
        view.addSubview(fundoBotoes)
        view.addSubview(botaoDireito)
        view.addSubview(botaoEsquerdo)
        view.addSubview(filmeColorplus)
        self.view = view
    }
    
    @IBAction func tocouBotaoDireito() {
        //imagem Fujicolor
        let arquivoImagemBase = UIImage(named: "frame_foto de referência")!
        let imagemFujicolor = UIImageView (image: arquivoImagemBase)
        imagemFujicolor.frame = CGRect (x: 80, y: 170, width: 540, height: 374.51)
        imagemFujicolor.image = arquivoImagemBase.addFilter(filter: .Instant)
        
        //descrição fujicolor
        let imgDescFujicolor = UIImage(named: "descrição_FUJI")
        let descricaoFujicolor = UIImageView(image: imgDescFujicolor)
        descricaoFujicolor.frame = CGRect(x: 690, y: 140, width: 334, height: 462)
        
        //área dos botoes
        let imgFundoBotoes = UIImage(named: "fundo_botaofilme")
        let fundoBotoes = UIImageView (image: imgFundoBotoes)
        fundoBotoes.frame = CGRect(x: 710, y: 490, width: 315, height: 276)
        
        //representação fujicolor
        let imgFilmeFujicolor = UIImage(named: "film_FUJICOLOR 200")
        let filmeFujicolor = UIImageView (image: imgFilmeFujicolor)
        filmeFujicolor.frame = CGRect(x: 820, y: 570, width: 117.3, height: 160)
        
        //botao esquerdo
        let imgBotaoEsquerdo = UIImage(named: "botao_esquerda")
        let botaoEsquerdo = UIButton()
        botaoEsquerdo.setImage(imgBotaoEsquerdo, for: .normal)
        botaoEsquerdo.frame = CGRect(x: 770, y:640, width: 24, height: 28.8)
        //botaoEsquerdo.addTarget(nil, action: #selector(tocouBotaoEsquerdo), for: .touchUpInside)
        
        //botao direito 2
        let imgBotaoDireito = UIImage(named: "botao_direita")
        let botaoDireito = UIButton()
        botaoDireito.setImage(imgBotaoDireito, for: .normal)
        botaoDireito.frame = CGRect(x: 960, y:640, width: 24, height: 28.8)
        botaoDireito.addTarget(nil, action: #selector(tocouBotaoDireito2), for: .touchUpInside)
        
        view.addSubview(descricaoFujicolor)
        view.addSubview(fundoBotoes)
        view.addSubview(imagemFujicolor)
        view.addSubview(filmeFujicolor)
        view.addSubview(botaoDireito)
        view.addSubview(botaoEsquerdo)
        
    }
    @IBAction func tocouBotaoDireito2() {
        
        //descrição hp5
        let imgDescHp5 = UIImage(named: "descrição_hp5")
        let descricaoHp5 = UIImageView(image: imgDescHp5)
        descricaoHp5.frame = CGRect(x: 690, y: 140, width: 334, height: 462)
        
        //área dos botoes
        let imgFundoBotoes = UIImage(named: "fundo_botaofilme")
        let fundoBotoes = UIImageView (image: imgFundoBotoes)
        fundoBotoes.frame = CGRect(x: 710, y: 490, width: 315, height: 276)
        
        //imagem Ilford
        let arquivoImagemBase = UIImage(named: "frame_foto de referência")!
        let imagemIlford = UIImageView (image: arquivoImagemBase)
        imagemIlford.frame = CGRect (x: 80, y: 170, width: 540, height: 374.51)
        imagemIlford.image = arquivoImagemBase.addFilter(filter: .Mono)
        
        //representação fujicolor
        let imgFilmeIlford = UIImage(named: "film_ilford400")
        let filmeIlford = UIImageView (image: imgFilmeIlford)
        filmeIlford.frame = CGRect(x: 820, y: 570, width: 117.3, height: 160)
        
        //botao esquerdo
        let imgBotaoEsquerdo = UIImage(named: "botao_esquerda")
        let botaoEsquerdo = UIButton()
        botaoEsquerdo.setImage(imgBotaoEsquerdo, for: .normal)
        botaoEsquerdo.frame = CGRect(x: 770, y:640, width: 24, height: 28.8)
        //botaoEsquerdo.addTarget(nil, action: #selector(tocouBotaoEsquerdo), for: .touchUpInside)
        
        //botao direito
        let imgBotaoDireito = UIImage(named: "botao_direita")
        let botaoDireito = UIButton()
        botaoDireito.setImage(imgBotaoDireito, for: .normal)
        botaoDireito.frame = CGRect(x: 960, y:640, width: 24, height: 28.8)
        //botaoDireito.addTarget(nil, action: #selector(tocouBotaoDireito), for: .touchUpInside)
        
        view.addSubview(descricaoHp5)
        view.addSubview(fundoBotoes)
        view.addSubview(botaoDireito)
        view.addSubview(botaoEsquerdo)
        view.addSubview(imagemIlford)
        view.addSubview(filmeIlford)
        
    }
    
    
}

//enumerando os filtros
enum FilterType : String {
    case Chrome = "CIPhotoEffectChrome"
    case Fade = "CIPhotoEffectFade"
    case Instant = "CIPhotoEffectInstant"
    case Mono = "CIPhotoEffectMono"
    case Noir = "CIPhotoEffectNoir"
    case Process = "CIPhotoEffectProcess"
    case Tonal = "CIPhotoEffectTonal"
    case Transfer =  "CIPhotoEffectTransfer"
}

//extension de UIImage
extension UIImage {
    
    func addFilter(filter : FilterType) -> UIImage {
        let filter = CIFilter(name: filter.rawValue)
        // convert UIImage to CIImage and set as input
        let ciInput = CIImage(image: self)
        filter?.setValue(ciInput, forKey: "inputImage")
        // get output CIImage, render as CGImage first to retain proper UIImage scale
        let ciOutput = filter?.outputImage
        let ciContext = CIContext()
        let cgImage = ciContext.createCGImage(ciOutput!, from: (ciOutput?.extent)!)
        //Return the image
        return UIImage(cgImage: cgImage!)
        
    }//fecha func AddFilter
    
}//fecha extension UIImage

public let arquivoImagemBase = UIImage(named: "frame_foto de referência")!
public var imagemBase = UIImageView (image: arquivoImagemBase)

let navigation = UINavigationController(screenType: .ipad, isPortrait: false)
let telaInicial = TelaInicial(screenType: .ipad, isPortrait: false)
let telaDeTutorial = TelaDeTutorial(screenType: .ipad, isPortrait: false)
let telaDaCamera = TelaDaCamera(screenType: .ipad, isPortrait: false)
navigation.pushViewController (telaInicial, animated: false)
navigation.navigationBar.isHidden =  true
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = navigation.scale(to: 0.5)

