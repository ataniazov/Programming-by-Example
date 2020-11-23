#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

#define SENTENCE_MAX_LEN     1000
#define WORD_MAX_LEN         100

typedef struct word_t word_t;

struct word_t {
    char * word;
    unsigned int word_len;
    word_t * next;
};

int append_word(word_t **, char *);
void print_word(word_t);
void print_words(word_t *);

int free_word(word_t **);
int free_words(word_t **);

int main(void)
{
    word_t * p_root_word = NULL;
    printf("Please enter the sentence:\n");
    char * sentence = (char *)malloc(SENTENCE_MAX_LEN * sizeof(char));
    gets(sentence);
    long sentence_len = strlen(sentence);

    if (0 >= sentence_len) {
        printf("ERROR: sentence length is %ld\n", sentence_len);
        return 1;
    }

    printf("You entered:\n%s\n", sentence);
    char p_char = *sentence;
    char * word = (char *)malloc(WORD_MAX_LEN * sizeof(char));
    unsigned int word_len = 0;
    unsigned int i = 1;

    for (; ;) {
        if ((' ' != p_char) && ('\0' != p_char)) {
            *(word + word_len) = p_char;
            word_len++;
        } else if (0 < word_len) {
            *(word + word_len) = '\0';
            append_word(&p_root_word, word);
            *word = '\0';
            word_len = 0;
        }

        if (('\0' == p_char) || (SENTENCE_MAX_LEN <= i)) {
            break;
        }

        p_char = *(sentence + i);
        i++;
    }

    free(word);
    free(sentence);
    print_words(p_root_word);
    printf("\n");
    printf("Hello world!\n");
    return 0;
}

int append_word(word_t ** p_root_word, char * str_word)
{
    word_t * p_word = malloc(sizeof(word_t));
    p_word->word_len = strlen(str_word);
    p_word->word = (char *)malloc((1 + (p_word->word_len)) * sizeof(char));
    strcpy(p_word->word, str_word);
    p_word->next = NULL;

    if (NULL == *p_root_word) {
        *p_root_word = p_word;
    } else {
        word_t * p_next = *p_root_word;

        while (NULL != (p_next->next)) {
            p_next = (word_t *)(p_next->next);
        }

        p_next->next = (word_t *)p_word;
    }

    return 0;
}

void print_word(word_t word)
{
    printf("%s (%d)", (word.word), (word.word_len));
}

void print_words(word_t * p_root_word)
{
    word_t * p_next = p_root_word;

    while (NULL != p_next) {
        print_word(*p_next);

        if (NULL != (p_next->next)) {
            printf(" -> ");
        }

        p_next = (word_t *)p_next->next;
    }
}

int free_word(word_t ** p_word)
{
    if (NULL == (*p_word)) {
        return 1;
    }

    (*p_word)->word_len = 0;
    free((*p_word)->word);
    free(*p_word);
    return 0;
}

int free_words(word_t ** p_root)
{
    return 0;
}
