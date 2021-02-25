
User.destroy_all
Favorite.destroy_all
Workout.destroy_all
TargetMuscle.destroy_all
Muscle.destroy_all


user1 = User.create(first_name:"Akram", last_name: "Alam", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Circle-icons-profile.svg/1024px-Circle-icons-profile.svg.png", email: "akram@akram.com", password: "1234")


workout1 = Workout.create(name: "Bench press", description:"The bench press is an upper-body weight training exercise in which the trainee presses a weight upwards while lying on a weight training bench." ,image:"https://lh3.googleusercontent.com/proxy/oyFYNvVuoBVtkuKlL9E5fyC3WP9W8qzE4ghBj5224m9zAtCfn4_eVtIV-SB2hFPeb1PMYSFjZBOPUP2iJuWysCKnngt2Ki5tDErHfCopGwl3-ooKwTw7", video:"https://youtu.be/SCVCLChPQFY")
workout2 = Workout.create(name: "Back Squat", description:"The back squat is a lower vody exercise, the bar is loaded at the top of your traps, near the base of your neck. Then you simply squat down, bending at the knees and hips, working to not let your knees track too far in front of your feet." ,image:"https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/Squats.svg/660px-Squats.svg.png", video:"https://youtu.be/QmZAiBqPvZw")
workout3 = Workout.create(name: "Power Clean", description:"In Power Clean, barbell is lifted from floor to shoulders. The lift is complete when feet are in line and bar is under control." ,image:"https://www.menshealth.com.au/media/9165/hang_power_clean-01-1.jpg?width=720&center=0.0,0.0" , video:"https://youtu.be/KwYJTpQ_x5A")
workout4 = Workout.create(name: "Deadlift", description:"The deadlift is a weight training exercise in which a loaded barbell or bar is lifted off the ground to the level of the hips, torso perpendicular to the floor, before being placed back on the ground." ,image:"https://thegyminmissionhills.com/wp-content/uploads/2017/06/Deadlift-Men.jpg", video:"https://youtu.be/op9kVnSso6Q")

m1 = Muscle.create(name:"Pectoralis")
m2 = Muscle.create(name:"Triceps ")
m3 = Muscle.create(name:"Deltoids")
m4 = Muscle.create(name:"Glutes")
m5 = Muscle.create(name:"Hamstrings")
m6 = Muscle.create(name:"Quadriceps")
m7 = Muscle.create(name:"Calves")
m8 = Muscle.create(name:"Biceps")
m9 = Muscle.create(name:"Obliques")
m10 = Muscle.create(name:"Trapezius")
m11 = Muscle.create(name:"Erector Spinae (Lower Back)")
m12 = Muscle.create(name:"Latissimus Dorsi (Lats)")


#bench press
TargetMuscle.create(workout_id: workout1.id, muscle_id: m1.id)
TargetMuscle.create(workout_id: workout1.id, muscle_id: m2.id)
TargetMuscle.create(workout_id: workout1.id, muscle_id: m3.id)
#back squat
TargetMuscle.create(workout_id: workout2.id, muscle_id: m4.id)
TargetMuscle.create(workout_id: workout2.id, muscle_id: m5.id)
TargetMuscle.create(workout_id: workout2.id, muscle_id: m6.id)
TargetMuscle.create(workout_id: workout2.id, muscle_id: m9.id)
#power Clean
TargetMuscle.create(workout_id: workout3, muscle_id: m10.id)
TargetMuscle.create(workout_id: workout3, muscle_id: m3.id)
TargetMuscle.create(workout_id: workout3, muscle_id: m4.id)
TargetMuscle.create(workout_id: workout3, muscle_id: m12.id)
TargetMuscle.create(workout_id: workout3, muscle_id: m1.id)
TargetMuscle.create(workout_id: workout3, muscle_id: m8.id)
#deadlift
TargetMuscle.create(workout_id: workout4, muscle_id: m10.id)
TargetMuscle.create(workout_id: workout4, muscle_id: m12.id)
TargetMuscle.create(workout_id: workout4, muscle_id: m11.id)
TargetMuscle.create(workout_id: workout4, muscle_id: m4.id)
TargetMuscle.create(workout_id: workout4, muscle_id: m5.id)


favorite1 = Favorite.create(user_id: user1.id , workout_id: workout1.id)
favorite2 = Favorite.create(user_id: user1.id, workout_id: workout2.id)
favorite3 = Favorite.create(user_id: user1.id, workout_id: workout3.id)
