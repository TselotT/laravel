<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class HeroCreated extends Notification implements ShouldQueue
{
    use Queueable;
    public $hero;
    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct($hero)
    {
        //
        $this->hero = $hero;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['mail'];
    }

    /**
     * Get the mail representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return \Illuminate\Notifications\Messages\MailMessage
     */
    public function toMail($notifiable)
    {
        return (new MailMessage)
                    ->line('New Hero successfully created')
                    ->line('Name => '.$this->hero->name)
                    ->line('Health => '.$this->hero->health)
                    ->action('Go to heroes page', url('/heroes'));
    }

    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toArray($notifiable)
    {
        return [
            //
        ];
    }
}
