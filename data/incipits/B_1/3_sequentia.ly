\version "2.24.2"
\include "header.ly"

Cornetto = {
  \relative c' {
    \clef soprano
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    R1*2 \gotoBar "6"
    r2 c'4 c
    c c c c
    c c c4. c8
    h4 h g8 a h c16 d
  }
}

TromboneI = {
  \relative c' {
    \clef alto
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    R1*2 \gotoBar "6"
    r2 g'4-\tutti g
    g g as as
    as as a4. a8
    a8 g g4 r2
  }
}

TromboneII = {
  \relative c' {
    \clef tenor
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    R1*2 \gotoBar "6"
    r2 es4 es
    es es es es
    es es es4. es8
    d4 d r g,8 a!16 h
  }
}

Fagotto = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    R1*2 \gotoBar "6"
    r2 c
    c8 c c c as2
    as8 as as as fis fis fis fis
    g2 r
  }
}

ClarinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    R1*2 \gotoBar "6"
    r2 g''
    g8 g g g \pa c,2
    c8 c c c c4 \pd r
    \pa d8 d d d \pd d4 r
  }
}

ClarinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Adagio"
    R1*2 \gotoBar "6"
    r2 c'
    c8 c c c c2
    c8 c c c c4 r
    r8 g g g g4 r
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    c'4 g c,8 c c c
    c'4 as c,8 c c c \gotoBar "6"
    c'4 h\trill c2
    c,8 c c c c4 r
    c8 c c c es es es es
    d2 g8 a h c16 d
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    es2 es8 es es es
    es2 es8 es es es \gotoBar "6"
    d2 c4 r
    es8 es es es es4 r
    es8 es c' c c c c c
    h2 r
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    R1*2 \gotoBar "6"
    r2 c'4^\tutti c
    c c c c
    c c c4. c8
    h4 h g8 a h c16[ d]
  }
}

SopranoLyrics = \lyricmode {
  Di -- es
  i -- rae, di -- es
  i -- rae, di -- es
  il -- la sol -- vet, sol -- vet
}

Alto = {
  \relative c' {
    \clef alto
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    R1*2 \gotoBar "6"
    r2 g'4^\tutti g
    g g as as
    as as a4. a8
    a8[ g] g4 r2
  }
}

AltoLyrics = \lyricmode {
  Di -- es
  i -- rae, di -- es
  i -- rae, di -- es
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    R1*2 \gotoBar "6"
    r2 es4^\tutti es
    es es es es
    es es es4. es8
    d4 d r g,8 a!16[ h]
  }
}

TenoreLyrics = \lyricmode {
  Di -- es
  i -- rae, di -- es
  i -- rae, di -- es
  il -- la sol -- vet
}

Basso = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    R1*2 \gotoBar "6"
    r2 c'4^\tutti g
    c, c as' es
    as, as fis4. fis8
    g4 g r2
  }
}

BassoLyrics = \lyricmode {
  Di -- es
  i -- rae, di -- es
  i -- rae, di -- es
  il -- la
}

Organo = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    c2-\solo c8 c c c
    as2 as8 as as as \gotoBar "6"
    fis'4 g c,2-\tutti
    c8 c c c as2
    as8 as as as fis fis fis fis
    g2 r4 \clef tenor g'8 a!16 h
  }
}

BassFigures = \figuremode {
  r1
  r
  <6 5>4 <_!>2.
  r1
  r2 <7 5>
  <9 _!>8 <8 \t> r2 <10!>8 <10>16 q
}

\score {
  <<
    \new StaffGroup <<
      \new Staff \with { \smallStaffDistance } {
        \set Staff.instrumentName = "cnto"
        \Cornetto
      }
      \new GrandStaff \with { \smallGroupDistance } <<
        \set GrandStaff.instrumentName = "trb"
        \new Staff {
          \set Staff.instrumentName = "1"
          \TromboneI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \TromboneII
        }
      >>
      \new Staff {
        \set Staff.instrumentName = "fag"
        \Fagotto
      }
    >>
    \new StaffGroup <<
      \new Staff <<
        \set Staff.instrumentName = \markup \center-column { "clno" "1, 2" }
        \partCombine #'(0 . 10) \ClarinoI \ClarinoII
      >>
    >>
    \new StaffGroup <<
      \new GrandStaff <<
        \set GrandStaff.instrumentName = "vl"
        \new Staff {
          \set Staff.instrumentName = "1"
          \ViolinoI
        }
        \new Staff {
          \set Staff.instrumentName = "2"
          \ViolinoII
        }
      >>
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics

      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics

      \new Staff {
        \set Staff.instrumentName = "B"
        \new Voice = "Basso" { \dynamicUp \Basso }
      }
      \new Lyrics \lyricsto Basso \BassoLyrics
    >>
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "org" "b" }
        \Organo
      }
    >>
    \new FiguredBass { \BassFigures }
  >>
}
