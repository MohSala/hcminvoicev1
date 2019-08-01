<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;
use App\User;

class SendNotification extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($message, $sender, $name)
    {
        $this->message = $message;
        $this->sender = $sender;
        $this->name = $name;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build($notifiable)
    {
         return (new MailMessage)
                    ->from($this->sender)
                    ->subject('New Invoice Verification')
                    ->line('Dear '.$this->name)
                    ->line(' '.$this->message);
        
    }
}
