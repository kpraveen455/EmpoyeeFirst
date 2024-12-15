//
//  HomeView.swift
//  EmployeeFirst
//
//  Created by praveen on 16/12/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                // Header Section
                VStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .padding()

                    Text("Jim Halpert")
                        .font(.title2)
                        .fontWeight(.bold)

                    Text("jim.halpert@dundermifflin.com")
                        .foregroundColor(.gray)
                        .font(.subheadline)
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal)

                // List Section
                List {
                    NavigationLink("Achievements", destination: AchievementsView())
                    NavigationLink("Projects Completed", destination: ProjectsView())
                    NavigationLink("Time and Attendance", destination: TimeAttendanceView())
                    NavigationLink("Org Structure", destination: OrgStructureView())
                    NavigationLink("Salary Details", destination: SalaryDetailsView())
                    NavigationLink("Leave Application", destination: LeaveApplicationView())
                }
                .listStyle(InsetGroupedListStyle())

                Spacer()

                // Settings Button
                NavigationLink(destination: SettingsView()) {
                    Text("Settings")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding(.horizontal)
            }
            .navigationTitle("Home")
        }
    }
}

#Preview {
    HomeView()
}
