using System.ComponentModel.DataAnnotations.Schema;

[Table("orders")]
public class Order
{
    [Column("id")]
    public int Id { get; set; }

    [Column("customer_id")]
    public int CustomerId { get; set; }

    [Column("total_cents")]
    public int TotalCents { get; set; }

    [Column("status")]
    public string Status { get; set; } = string.Empty;

    [Column("created_at")]
    public DateTime CreatedAt { get; set; }
}
