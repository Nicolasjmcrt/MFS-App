<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20230213141104 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE company ADD CONSTRAINT FK_4FBF094FB9286F68 FOREIGN KEY (first_letter_id) REFERENCES company_first_letter (id)');
        $this->addSql('CREATE INDEX IDX_4FBF094FB9286F68 ON company (first_letter_id)');
        $this->addSql('ALTER TABLE planes_category ADD hero_img VARCHAR(255) NOT NULL');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE company DROP FOREIGN KEY FK_4FBF094FB9286F68');
        $this->addSql('DROP INDEX IDX_4FBF094FB9286F68 ON company');
        $this->addSql('ALTER TABLE planes_category DROP hero_img');
    }
}
