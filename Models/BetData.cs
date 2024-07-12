using Microsoft.IdentityModel.Tokens;

namespace TuPencaUy.Models;

public class BetData(List<Bet> list)
{
    private List<Bet> List { get; set; } = list;

    public Bet? Bet()
    {
        return List.IsNullOrEmpty() ? null : List.First();
    }
}