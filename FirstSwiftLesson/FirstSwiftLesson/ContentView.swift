//
//  ContentView.swift
//  FirstSwiftLesson
//
//  Created by Pauline Broängen on 2022-09-30.
//

import SwiftUI


struct ContentView: View {
    
    var persons = [Person(firstName: "Pauline", lastName: "Gisela Denise"), Person(firstName: "Novalie", lastName: "Aida"), Person(firstName: "Colin", lastName: "Charbel")]
    
    
    
    
    var body: some View {
        VStack {
            
            List(persons) {
                person in
                PersonView(person: person)
            }
        }
    }
}


struct PersonView: View {
    
    var person: Person
    
    var body: some View {
        
        HStack {
            ZStack() {
                Circle().fill(.gray).frame(width: 30, height: 30, alignment: .leading)
                Image(systemName: "person.circle")
            }
            
            HStack {
                Text(person.firstName)
                Text(person.lastName)
            }
                    
            }
            
        }
    }






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
