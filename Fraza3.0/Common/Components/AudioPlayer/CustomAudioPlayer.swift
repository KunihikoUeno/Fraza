import SwiftUI
import AVFoundation

class CustomAudioPlayer: NSObject, AVAudioPlayerDelegate, ObservableObject {
    
    @Published var isPlaying = false
    private var audioPlayer: AVAudioPlayer?

    func play(audio fileName: String) {
        if let path = Bundle.main.path(forResource: fileName, ofType: "mp3") {
            let url = URL(fileURLWithPath: path)
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.prepareToPlay()
                audioPlayer?.delegate = self
                audioPlayer?.play()
                isPlaying.toggle()
            } catch {
                print("Audio Player Error.")
            }
        }
    }
    
    func pause() {
        audioPlayer?.pause()
        isPlaying.toggle()
    }

    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        isPlaying.toggle()
    }
    
}
