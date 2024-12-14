\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    r2 as'\p
    g f
    es d8 es16 d g f h c
    r8 es,16( d) g( f) h( c) as8( \grace g16 f8) d4\trill
    c r as'2
    g f
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    g'2~\p g4 f~
    f es2 d4~
    d c h r
    g8 c16( h) es( d) f( es) c8 c4 h8
    c4 c c2~
    c2. d4
  }
}

Basso = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \autoBeamOff \tempoMarkup "Adagio"
    R1*4
    g'2~^\solo g4 f~
    f es es d8 d
  }
}

BassoLyrics = \lyricmode {
  Tae -- _
  det a -- ni -- mam
}

Organo = {
  \relative c {
    \clef bass
    \key c \dorian \time 4/4 \tempoMarkup "Adagio"
    r8 c\p es c r f as f
    r c es c r a! h g
    r c es c g'4 r
    g, r f' g8 g,
    c c es c r f, as f
    r c' es c r a h g
  }
}

BassFigures = \figuremode {
  r2 r8 <9> <6>4
  r8 <5 4> r4. <6 5>4 <7>8
  r <9> <6>4 <_!>2
  <\t>2 <_->4 <4>8 <_!>
  r2 r8 <9> <6>4
  r8 <5 4> r4. <6 5>
}

\score {
  <<
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
