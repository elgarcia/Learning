using System;

char		gamestat = '0';
string 		player1 = "";
string[]	player2 = new string[] {"Rock", "Paper", "Scissors"};
int			aux;
Random value = new Random();

while (gamestat != 'N')
{
	while (!player1.Contains("Paper") && !player1.Contains("Rock") && !player1.Contains("Scissors"))
	{
		Console.Write("Pick one: Rock, Paper or Scissors ->");
		//ReadLine puede fallar (proteccion nula)
		player1 = Console.ReadLine();
	}
	Console.Clear();
	aux = value.Next(0, 3);
	Console.WriteLine($"{player1} vs {player2[aux]}");
	if (player1 == "Rock" && player2[aux] == "Rock")
		Console.WriteLine("Draw :(");
	else if (player1 == "Rock" && player2[aux] == "Paper")
		Console.WriteLine("You lose! >:(");
	else if (player1 == "Rock" && player2[aux] == "Scissors")
		Console.WriteLine("You win! :)");
	else if (player1 == "Paper" && player2[aux] == "Rock")
		Console.WriteLine("You win! :)");
	else if (player1 == "Paper" && player2[aux] == "Paper")
		Console.WriteLine("Draw :(");
	else if (player1 == "Paper" && player2[aux] == "Scissors")
		Console.WriteLine("You lose! >:(");
	else if (player1 == "Scissors" && player2[aux] == "Rock")
		Console.WriteLine("You lose! >:(");
	else if (player1 == "Scissors" && player2[aux] == "Paper")
		Console.WriteLine("You win! :)");
	else if (player1 == "Scissors" && player2[aux] == "Scissors")
		Console.WriteLine("Draw :(");

	player1 = "";
	gamestat = '0';
	while (gamestat != 'Y' && gamestat != 'N')
	{
		Console.WriteLine("Play again? (Y/N)");
		//ReadLine puede fallar (proteccion nula)
		gamestat = Console.ReadLine()[0];
	}
}