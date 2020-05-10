using Microsoft.EntityFrameworkCore.Migrations;

namespace BusinessService.Data.Migrations
{
    public partial class Final : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Students_Standards_StandardId",
                table: "Students");

            migrationBuilder.DropColumn(
                name: "GradeId",
                table: "Students");

            migrationBuilder.AlterColumn<int>(
                name: "StandardId",
                table: "Students",
                nullable: false,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AddForeignKey(
                name: "FK_Students_Standards_StandardId",
                table: "Students",
                column: "StandardId",
                principalTable: "Standards",
                principalColumn: "StandardId",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Students_Standards_StandardId",
                table: "Students");

            migrationBuilder.AlterColumn<int>(
                name: "StandardId",
                table: "Students",
                type: "int",
                nullable: true,
                oldClrType: typeof(int));

            migrationBuilder.AddColumn<int>(
                name: "GradeId",
                table: "Students",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddForeignKey(
                name: "FK_Students_Standards_StandardId",
                table: "Students",
                column: "StandardId",
                principalTable: "Standards",
                principalColumn: "StandardId",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
