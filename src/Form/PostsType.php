<?php

namespace App\Form;

use App\Entity\Posts;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class PostsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('titulo', TextType::class, array(
                'label' => 'Título'
            ))
            // ->add('likes')
            ->add(
                'foto',
                FileType::class,
                [
                'label' => 'Selecciona una imagen',
                'mapped' => false,
                'required' => false
            ]
            )
            // ->add('fecha_publicacion')
            ->add('contenido', TextareaType::class, array(
                'label' => 'Contenido'
            ))
            // ->add('user')
            ->add('submit', SubmitType::class, array(
                'label' => 'Guardar'
            ));
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Posts::class,
        ]);
    }
}