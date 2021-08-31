//
//  TextViews.swift
//  Bullseye
//
//  Created by Sid on 7/7/21.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .bold()
            .foregroundColor(Color("TextViews"))
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
    }
}

struct BigNumberText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .kerning(-1.0)
            .foregroundColor(Color("TextViews"))
            .font(.largeTitle)
            .fontWeight(.black)
    }
    
}

struct LabelText: View {
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .bold()
            .foregroundColor(Color("TextViews"))
            .font(.caption)
            .kerning(1.7)
            .fontWeight(.bold)
    }
}

struct SliderLabelText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(Color("TextViews"))
            .frame(width: 35.0)
    }
}

struct BodyText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .fontWeight(.semibold)
            .font(.subheadline)
            .multilineTextAlignment(.center)
            .lineSpacing(12.0)
    }
}

struct ButtonText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                Color.accentColor
            )
            .foregroundColor(Color.white)
            .cornerRadius(20)
    }
}

struct ScoreText: View {
    var score: Int
    
    var body: some View {
        Text(String(score))
            .bold()
            .kerning(-0.2)
            .foregroundColor(Color("TextViews"))
            .font(.title3)
    }
}

struct DateText: View {
    var date: Date
    
    var body: some View {
        Text(date, style: .time)
            .bold()
            .kerning(-0.2)
            .foregroundColor(Color("TextViews"))
            .font(.title3)
    }
}

struct BigBoldText: View {
    let text: String
    
    var body: some View {
        Text(text.uppercased())
            .kerning(3.0)
            .bold()
            .font(.title)
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText(text: "Instructions")
            BigNumberText(text: "99")
            HStack {
                SliderLabelText(text: "10")
                SliderLabelText(text: "100")
            }
            LabelText(text: "Score")
            BodyText(text: "You scored 200 Points\n 🎉🎉🎉")
            ButtonText(text: "Start New Round")
            ScoreText(score: 459)
            DateText(date: Date())
        }
        .padding()
    }
}

