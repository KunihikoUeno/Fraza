import SwiftUI
import AVFoundation

struct AudioPlayerView: View {
    
    @ObservedObject private var audioPlayer = CustomAudioPlayer()
    let fileName: String
    
    var body: some View {
        Button(action: {
            audioPlayer.isPlaying
                ? audioPlayer.pause()
                : audioPlayer.play(audio: fileName)
        }) {
            Image(audioPlayer.isPlaying ? "pause" : "play")
        }
        .onDisappear {
            audioPlayer.pause()
        }
    }
    
}

struct AudioPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        AudioPlayerView(fileName: "hello")
    }
}
