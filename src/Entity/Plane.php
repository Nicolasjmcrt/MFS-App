<?php

namespace App\Entity;

use App\Repository\PlaneRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: PlaneRepository::class)]
class Plane
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $name = null;

    #[ORM\Column(type: Types::TEXT)]
    private ?string $description = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $image = null;

    #[ORM\Column(nullable: true)]
    private ?\DateTimeImmutable $updatedAt = null;

    #[ORM\Column]
    private ?\DateTimeImmutable $createdAt = null;

    #[ORM\ManyToOne(inversedBy: 'planes')]
    #[ORM\JoinColumn(nullable: false)]
    private ?PlanesCategory $category = null;

    #[ORM\Column(nullable: true)]
    private ?int $maxSpeed = null;

    #[ORM\Column(nullable: true)]
    private ?int $cruisingSpeed = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $engine = null;

    #[ORM\Column(nullable: true)]
    private ?int $maxElevation = null;

    #[ORM\Column(nullable: true)]
    private ?int $emptyWeight = null;

    #[ORM\Column(nullable: true)]
    private ?int $maxWeight = null;

    #[ORM\Column(nullable: true)]
    private ?int $rangeOfAction = null;

    #[ORM\Column(nullable: true)]
    private ?int $fuelCapacity = null;

    #[ORM\Column(nullable: true)]
    private ?int $length = null;

    #[ORM\Column(nullable: true)]
    private ?int $wingspan = null;

    #[ORM\Column(length: 255)]
    private ?string $slug = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getImage(): ?string
    {
        return $this->image;
    }

    public function setImage(?string $image): self
    {
        $this->image = $image;

        return $this;
    }

    public function getUpdatedAt(): ?\DateTimeImmutable
    {
        return $this->updatedAt;
    }

    public function setUpdatedAt(?\DateTimeImmutable $updatedAt): self
    {
        $this->updatedAt = $updatedAt;

        return $this;
    }

    public function getCreatedAt(): ?\DateTimeImmutable
    {
        return $this->createdAt;
    }

    public function setCreatedAt(\DateTimeImmutable $createdAt): self
    {
        $this->createdAt = $createdAt;

        return $this;
    }

    public function getCategory(): ?PlanesCategory
    {
        return $this->category;
    }

    public function setCategory(?PlanesCategory $category): self
    {
        $this->category = $category;

        return $this;
    }

    public function getMaxSpeed(): ?int
    {
        return $this->maxSpeed;
    }

    public function setMaxSpeed(?int $maxSpeed): self
    {
        $this->maxSpeed = $maxSpeed;

        return $this;
    }

    public function getCruisingSpeed(): ?int
    {
        return $this->cruisingSpeed;
    }

    public function setCruisingSpeed(?int $cruisingSpeed): self
    {
        $this->cruisingSpeed = $cruisingSpeed;

        return $this;
    }

    public function getEngine(): ?string
    {
        return $this->engine;
    }

    public function setEngine(?string $engine): self
    {
        $this->engine = $engine;

        return $this;
    }

    public function getMaxElevation(): ?int
    {
        return $this->maxElevation;
    }

    public function setMaxElevation(?int $maxElevation): self
    {
        $this->maxElevation = $maxElevation;

        return $this;
    }

    public function getEmptyWeight(): ?int
    {
        return $this->emptyWeight;
    }

    public function setEmptyWeight(?int $emptyWeight): self
    {
        $this->emptyWeight = $emptyWeight;

        return $this;
    }

    public function getMaxWeight(): ?int
    {
        return $this->maxWeight;
    }

    public function setMaxWeight(?int $maxWeight): self
    {
        $this->maxWeight = $maxWeight;

        return $this;
    }

    public function getRangeOfAction(): ?int
    {
        return $this->rangeOfAction;
    }

    public function setRangeOfAction(?int $rangeOfAction): self
    {
        $this->rangeOfAction = $rangeOfAction;

        return $this;
    }

    public function getFuelCapacity(): ?int
    {
        return $this->fuelCapacity;
    }

    public function setFuelCapacity(?int $fuelCapacity): self
    {
        $this->fuelCapacity = $fuelCapacity;

        return $this;
    }

    public function getLength(): ?int
    {
        return $this->length;
    }

    public function setLength(?int $length): self
    {
        $this->length = $length;

        return $this;
    }

    public function getWingspan(): ?int
    {
        return $this->wingspan;
    }

    public function setWingspan(?int $wingspan): self
    {
        $this->wingspan = $wingspan;

        return $this;
    }

    public function getSlug(): ?string
    {
        return $this->slug;
    }

    public function setSlug(?string $slug): self
    {
        $this->slug = $slug;

        return $this;
    }
}
