\version "2.24.2"
\include "header.ly"

Violino = {
  \relative c' {
    \clef treble
    \key g \minor \time 4/4 \tempoMarkup "Larghetto"
    R1*3 \gotoBar "12"
    g'4 r r2
    r r4 c~
    c8 es a,4 as g8( es)
  }
}

Viola = {
  \relative c' {
    \clef alto
    \key g \minor \time 4/4 \tempoMarkup "Larghetto"
    d4. d8 g4. g8
    a8. b32( c) b8 a b16( a) g8 r16 b a g
    a cis, d8 r16 g f es f a, b8 r16 es d c \gotoBar "12"
    g'8 g16 f es8 d es d c b
    c f c d es4 c8 a!
    fis4 fis' f es8 c
  }
}

Tenore = {
  \relative c' {
    \clef tenor
    \key g \minor \time 4/4 \tempoMarkup "Larghetto" \autoBeamOff
    R1*3 \gotoBar "12"
    g4.^\solo g8 g4 g
    as4. h8 c[ d] es4~
    es d8[ c] h4 c
  }
}

TenoreLyrics = \lyricmode {
  Sta -- bat ma -- ter
  do -- lo -- ro -- _
  _ _ sa,
}

Organo = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \tempoMarkup "Larghetto"
    g'8 f es d es d c b
    c a d d, g4 g'
    f es d c \gotoBar "12"
    g'8 f es d es d c b
    c f c d es4 c8 a!
    fis4 fis' f es8 c
  }
}

BassFigures = \figuremode {
  r1
  <6 5>4 <6 4>8 <5 _+> r2
  <6>4 <5> <6> <5>
  r4. <6 4>2 <6>8
  <6-> <\t>4 <6!>8 <6>4 <5>8 <\t>
  <7>4 <6>8 <5> r4 <6>
}

\score {
  <<
    \new StaffGroup <<
      \new Staff {
        \set Staff.instrumentName = "vl"
        \Violino
      }
      \new Staff {
        \set Staff.instrumentName = "vla"
        \Viola
      }
    >>
    \new ChoirStaff <<
      \new Staff {
        \set Staff.instrumentName = "T"
        \new Voice = "Tenore" { \dynamicUp \Tenore }
      }
      \new Lyrics \lyricsto Tenore \TenoreLyrics
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
