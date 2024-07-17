namespace TuPencaUy.Models;

public class SiteData(
    int id,
    string name,
    string domain,
    int accessType,
    int color,
    string? paypalEmail,
    string? uniqueID,
    int? totalUsers)
{
    public int Id { get; set; } = id;
    public string Name { get; set; } = name;
    public string Domain { get; set; } = domain;
    public int AccessType { get; set; } = accessType;
    public int Color { get; set; } = color;
    public string? PaypalEmail { get; set; } = paypalEmail;
    public string? UniqueId { get; set; } = uniqueID;
    public int? TotalUsers { get; set; } = totalUsers;
}