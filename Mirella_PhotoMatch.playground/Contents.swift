//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport
import AVFoundation


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
        navigationController?.pushViewController(telaDeTutorial, animated: true)
        print("Chamou tutorial")
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
        navigationController?.pushViewController(telaDaCamera, animated: true)
        print("Chamou jogo")
    }
    
}

class TelaDaCamera: UIViewController {
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        //imagem menor de referência
        let frameImagemRef = UIImage(named: "frame_foto de referência")!
        let referência = UIImageView(image: frameImagemRef)
        referência.frame = CGRect (x: 80, y: 50, width: 317, height: 220)
        
        //imagem e descrição do filme Fujicolor C200
        let imagemFujicolorC200 = UIImage(named: "FUJICOLOR C200_BOTÃO")!
        let filmeFujicolorC200 = UIImageView (image: imagemFujicolorC200)
        filmeFujicolorC200.frame = CGRect ( x: -40, y: 280, width: 443, height: 570)
        
        //imagem e descrição do filme ColorPlus 200
        let imagemColorPlus200 = UIImage(named: "KODAK COLORPLUS 200_BOTÃO")!
        let filmeColorPlus200 = UIImageView (image: imagemColorPlus200)
        filmeColorPlus200.frame = CGRect ( x: -40, y: 280, width: 443, height: 570)
        
        //botao de disparo
        let imagemBotaoDisparo = UIImage (named: "BOTÃO DISPARO")!
        let botaoDisparo = UIButton()
        botaoDisparo.frame = CGRect (x: 830, y: 570, width: 180, height: 180)
        botaoDisparo.setBackgroundImage(imagemBotaoDisparo, for: .normal)
        
        //imagem base
        let arquivoImagemBase = UIImage (named: "Imagem_Base")!
        let imagemBase = UIImageView (image: arquivoImagemBase)
        imagemBase.frame = CGRect (x: 400, y: 80, width: 530, height: 351)
        imagemBase.image = arquivoImagemBase.addFilter(filter: .Mono)
        
        
        //declarar as views
        self.view = view
        view.addSubview(filmeFujicolorC200)
        view.addSubview(filmeColorPlus200)
        view.addSubview(referência)
        view.addSubview(botaoDisparo)
        view.addSubview(imagemBase)
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


let navigation = UINavigationController(screenType: .ipad, isPortrait: false)
let telaInicial = TelaInicial(screenType: .ipad, isPortrait: false)
let telaDeTutorial = TelaDeTutorial(screenType: .ipad, isPortrait: false)
let telaDaCamera = TelaDaCamera(screenType: .ipad, isPortrait: false)
navigation.pushViewController (telaInicial, animated: false)
navigation.navigationBar.isHidden =  true
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = navigation.scale(to: 0.5)


//Ana - Na primeira tela
//let navigation = UINavigationController(screenType: .ipad, isPortrait: false) navigation.pushViewController (catalogo, animated: false) navigation.navigationBar.isHidden =  false  PlaygroundPage.current.liveView = navigation.scale(to: 0.7)

//        //ruído (granulação) da imagem
//        guard
//            let coloredNoise = CIFilter(name:"CIRandomGenerator"),
//            let noiseImage = coloredNoise.outputImage
//            else {
//                return self
//        }
//        let whitenVector = CIVector(x: 0, y: 1, z: 0, w: 0)
//        let fineGrain = CIVector(x:0, y:0.005, z:0, w:0)
//        let zeroVector = CIVector(x: 0, y: 0, z: 0, w: 0)
//        guard
//            let whiteningFilter = CIFilter(name:"CIColorMatrix",
//                                           parameters:
//            [
//                kCIInputImageKey: noiseImage,
//                "inputRVector": whitenVector,
//                "inputGVector": whitenVector,
//                "inputBVector": whitenVector,
//                "inputAVector": fineGrain,
//                "inputBiasVector": zeroVector
//            ]),
//            let whiteSpecks = whiteningFilter.outputImage
//            else {
//                return self
//        }
//        guard
//            let speckCompositor = CIFilter(name:"CISourceOverCompositing",
//                                           parameters:
//            [
//                kCIInputImageKey: whiteSpecks,
//                kCIInputBackgroundImageKey: ciOutput!
//            ]),
//            let speckledImage = speckCompositor.outputImage
//            else {
//                return self
//        }
//
//
//        //scratchy analog film
//        let verticalScale = CGAffineTransform(scaleX: 1.5, y: 25)
//        let transformedNoise = noiseImage.transformed(by: verticalScale)
//
//        let darkenVector = CIVector(x: 4, y: 0, z: 0, w: 0)
//        let darkenBias = CIVector(x: 0, y: 1, z: 1, w: 1)
//
//        guard
//            let darkeningFilter = CIFilter(name:"CIColorMatrix",
//                                           parameters:
//            [
//                kCIInputImageKey: transformedNoise,
//                "inputRVector": darkenVector,
//                "inputGVector": zeroVector,
//                "inputBVector": zeroVector,
//                "inputAVector": zeroVector,
//                "inputBiasVector": darkenBias
//            ]),
//            let randomScratches = darkeningFilter.outputImage
//            else {
//                return self
//        }
//
//        guard
//            let grayscaleFilter = CIFilter(name:"CIMinimumComponent",
//                                           parameters:
//            [
//                kCIInputImageKey: randomScratches
//            ]),
//            let darkScratches = grayscaleFilter.outputImage
//            else {
//                return self
//        }
//        guard
//            let oldFilmCompositor = CIFilter(name:"CIMultiplyCompositing",
//                                             parameters:
//            [
//                kCIInputImageKey: darkScratches,
//                kCIInputBackgroundImageKey: speckledImage
//            ]),
//            let oldFilmImage = oldFilmCompositor.outputImage
//            else {
//                return self
//        }
//        let finalImage = oldFilmImage.cropped(to: ciInput!.extent)
