//
//  LeaderboardView.swift
//  Bullseye
//
//  Created by Sid on 8/16/21.
//

import SwiftUI

struct LeaderboardView: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack {
                HeaderView()
                LabelView()
                RowView(index: 1, score: 10, date: Date())
            }
        }
    }
}

struct RowView: View {
    let index: Int
    let score: Int
    let date: Date
    
    var body: some View{
        HStack {
            RoundedTextView(text: String(index))
            Spacer()
            ScoreText(score: score)
                .frame(width: Constants.Leaderboeard.leaderboardScoreColWidth)
            Spacer()
            DateText(date: date)
                .frame(width: Constants.Leaderboeard.leaderboardDateColWidth)
        }
        .background(
            RoundedRectangle(cornerRadius:
                                .infinity)
                .strokeBorder(Color("LeaderboardRowColor"), lineWidth: Constants.General.strokeWidth)
            
        )
        .padding()
    }
}

struct HeaderView: View {
    var body: some View {
        BigBoldText(text: "Leaderboard")
    }
}

struct LabelView: View {
    var body: some View {
        HStack {
            Spacer()
                .frame(width: Constants.General.roundedViewLength)
            Spacer()
            LabelText(text: "score")
                .frame(width: Constants.Leaderboeard.leaderboardDateColWidth)
            Spacer()
            LabelText(text: "date")
                .frame(width: Constants.Leaderboeard.leaderboardDateColWidth)
        }
        .padding(.leading)
        .padding(.trailing)
        .frame(maxWidth: Constants.Leaderboeard.leaderboardMaxRowWidth)
    }
}

struct LeaderboardView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderboardView()
            .preferredColorScheme(.dark)
        LeaderboardView()
            .previewLayout(.fixed(width: 568, height: 320))
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        LeaderboardView()
        LeaderboardView().previewLayout(.fixed(width: 568, height: 320))
    }
}

