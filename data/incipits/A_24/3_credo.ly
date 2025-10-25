\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    R1*6 %6
    g'2 a4. h8
    c4 a8 a d2
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    c2 e4. f8
    g4 e a2
    g c,~
    c c4 h
    c e8 f g2~
    g2. fis4
    g g f8 e f4
    g f4. a8 g4
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    R1*6 %6
    g'2^\tutti a4. h8
    c4 a8 a d2
  }
}

SopranoLyrics = \lyricmode {
  De -- _ _
  _ um de "De -"
}

Alto = {
  \relative c' {
    \clef alto
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    c2^\tutti e4. f8
    g4 e a2
    g c,
    c4 c c h
    c e8[ f] g4 g
    g g8 g g4 fis
    g g f8[ e] f4
    g f4. a8 g g
  }
}

AltoLyrics = \lyricmode {
  Pa -- trem o --
  mni -- po -- ten --
  tem, o --
  mni -- po -- ten -- _
  tem, fa -- cto -- rem
  coe -- li et ter -- _
  rae, fa -- cto -- rem
  coe -- li et ter -- rae,
}

Tenore = {
  \relative c' {
    \clef tenor
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    R1*2
    g4^\tutti g a a8 h
    c4 a d4. d8
    c2 c
    e2. d4~
    d e a, d
    c c c h
  }
}

TenoreLyrics = \lyricmode {
  Et in u -- num, in
  u -- num Do -- mi --
  num Je --
  sum, Je --
  sum Chri -- stum,
  Je -- sum "Chri -"
}

Basso = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Allegro"
    R1*4
    c2^\tutti e4. f8
    g4 e a2
    g4. e8 f[ c] f[ d]
    e[ c f a] f[ d g g,]
  }
}

BassoLyrics = \lyricmode {
  Et ex __ _
  Pa -- tre na --
  tum, ex Pa -- tre
  na -- \hy
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Allegro"
    c8-\tutti d e d c c' h a
    h g c e c a d c
    h a g e f! c f d
    e c f a f d g g,
    c a g f e e' e d
    c d e d c a d d,
    g g' f! e f c f d
    e c f a f d g g,
  }
}

BassFigures = \figuremode {
  r2.. <6>8
  q2 <6 5>4 <_+>
  <6>2.. q8
  r2 <6 5>
  r <6>
  r <6 5>4 <_+>
  r1
  r2 <6 5>
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
        \set Staff.instrumentName = "S"
        \new Voice = "Soprano" { \dynamicUp \Soprano }
      }
      \new Lyrics \lyricsto Soprano \SopranoLyrics

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "A" "trb 1" }
        \new Voice = "Alto" { \dynamicUp \Alto }
      }

      \new Staff {
        \set Staff.instrumentName = \markup \center-column { "T" "trb 2" }
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
