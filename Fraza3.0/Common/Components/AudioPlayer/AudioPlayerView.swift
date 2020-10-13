import SwiftUI
import AVFoundation

struct AudioPlayerView: View {
    
    let fileName: String
    @State private var audioPlayer: AVAudioPlayer?
    @State private var isAudioPlaying = false
    
    var body: some View {
        Button(action: {
            if isAudioPlaying {
                audioPlayer?.pause()
                isAudioPlaying = false
                return
            }
            if let path = Bundle.main.path(forResource: fileName, ofType: "mp3") {
                self.audioPlayer = AVAudioPlayer()
                let url = URL(fileURLWithPath: path)
                do {
                    self.audioPlayer = try AVAudioPlayer(contentsOf: url)
                    self.audioPlayer?.prepareToPlay()
                    self.audioPlayer?.play()
                    self.isAudioPlaying = true
                } catch {
                    print("Audio Player Error.")
                }
            }
        }) {
            Image(isAudioPlaying ? "pause" : "play")
        }
    }
    
}

struct AudioPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        AudioPlayerView(fileName: "hello")
    }
}
