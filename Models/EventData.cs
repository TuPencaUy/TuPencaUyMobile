using Newtonsoft.Json;

namespace TuPencaUy.Models;

public class EventData(List<Match> list, int count)
{
    public List<Match> Matches { get; set; } = list;
    public int Quantity { get; set; } = count;
}