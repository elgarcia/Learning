using System;

// initialize variables - graded assignments 
int currentAssignments = 5;

int[] sophiaScores = new int[] {90, 86, 87, 98, 100, 94, 90};
int[] andrewScores = new int[] {92, 89, 81, 96, 90, 89};
int[] emmaScores = new int[] {90, 85, 87, 98, 68, 89, 89, 90};
int[] loganScores = new int[] {90, 95, 87, 88, 96, 96};
//Test adding students
int[] beckyScores = new int[] { 92, 91, 90, 91, 92, 92, 92 };
int[] chrisScores = new int[] { 84, 86, 88, 90, 92, 94, 96, 98 };
int[] ericScores = new int[] { 80, 90, 100, 80, 90, 100, 80, 90 };
int[] gregorScores = new int[] { 91, 91, 91, 91, 91, 91, 91 };

string[] studentNames = new string[] {"Sophia", "Andrew", "Emma", "Logan", 
    "Becky", "Chris", "Eric", "Gregor"};
int[] studentScores = new int[10];

Console.WriteLine("Student\t\tGrade\n");
foreach(string student in studentNames)
{
    if (student == "Sophia")
        studentScores = sophiaScores;
    else if (student == "Andrew")
        studentScores = andrewScores;
    else if (student == "Emma")
        studentScores = emmaScores;
    else if (student == "Logan")
        studentScores = loganScores;
    //Test adding new students
    else if (student == "Becky")
        studentScores = beckyScores;
    else if (student == "Chris")
        studentScores = chrisScores;
    else if (student == "Eric")
        studentScores = ericScores;
    else if (student == "Gregor")
        studentScores = gregorScores;
    else
        continue;

    int currentStudentSum = 0;

    decimal currentStudentGrade = 0;

    string currentStudentLetterGrade = "";

    int numScore = 0;
    foreach(int score in studentScores)
    {
        numScore++;
        if (numScore > currentAssignments)
            currentStudentSum += score / 10;
        else
            currentStudentSum += score;
    }

    currentStudentGrade = (decimal)(currentStudentSum) / currentAssignments;

    if (currentStudentGrade >= 97)
        currentStudentLetterGrade = "A+";
    else if (currentStudentGrade >= 93)
        currentStudentLetterGrade = "A";
    else if (currentStudentGrade >= 90)
        currentStudentLetterGrade = "A-";
    else if (currentStudentGrade >= 87)
        currentStudentLetterGrade = "B+";
    else if (currentStudentGrade >= 83)
        currentStudentLetterGrade = "B";
    else if (currentStudentGrade >= 80)
        currentStudentLetterGrade = "B-";
    else if (currentStudentGrade >= 77)
        currentStudentLetterGrade = "C+";
    else if (currentStudentGrade >= 73)
        currentStudentLetterGrade = "C";
    else if (currentStudentGrade >= 70)
        currentStudentLetterGrade = "C-";
    else if (currentStudentGrade >= 67)
        currentStudentLetterGrade = "D+";
    else if (currentStudentGrade >= 63)
        currentStudentLetterGrade = "D";
    else if (currentStudentGrade >= 60)
        currentStudentLetterGrade = "D-";
    else if (currentStudentGrade >= 0)
        currentStudentLetterGrade = "F";

    Console.WriteLine($"{student}:\t\t {currentStudentGrade} \t{currentStudentLetterGrade}");
}
// int sophiaSum = 0;
/* int andrewSum = 0;
int emmaSum = 0;
int loganSum = 0; */

// decimal sophiaScore;
/* decimal andrewScore;
decimal emmaScore;
decimal loganScore; */



/* andrewSum = andrew1 + andrew2 + andrew3 + andrew4 + andrew5;
emmaSum = emma1 + emma2 + emma3 + emma4 + emma5;
loganSum = logan1 + logan2 + logan3 + logan4 + logan5;
 */
// sophiaScore = (decimal)sophiaSum / currentAssignments;
/* andrewScore = (decimal)andrewSum / currentAssignments;
emmaScore = (decimal)emmaSum / currentAssignments;
loganScore = (decimal)loganSum / currentAssignments; */

/* Console.WriteLine("Student\t\tGrade\n");
Console.WriteLine("Sophia:\t\t" + sophiaScore + "\tA-"); */
/* Console.WriteLine("Andrew:\t\t" + andrewScore + "\tB+");
Console.WriteLine("Emma:\t\t" + emmaScore + "\tB");
Console.WriteLine("Logan:\t\t" + loganScore + "\tA-"); */

Console.WriteLine("Press the Enter key to continue");
Console.ReadLine();
