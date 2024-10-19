\version "2.24.2"
\include "header.ly"

Trombone = {
  \relative c' {
    \clef alto
    \key g \minor \time 4/4 \tempoMarkup "Tempo moderato"
    d4 g8. a16 fis8 g es8.\trill es16
    d4 r8 g~ g16 fis a g fis es! d c
    b a g8 r d' es g16 f e f d e \gotoBar "7"
    b b' a g fis8.\trill g16 g4 r
    r2 r8 b16( a) b8 b,
  }
}

ViolinoI = {
  \relative c' {
    \clef treble
    \key g \minor \time 4/4 \tempoMarkup "Tempo moderato"
    R1
    r8 d'16(\p c) d8 d, r2
    r8 d'16( c) d8 b r2 \gotoBar "7"
    b16-! d( es) c! \appoggiatura b8 a4\trill g r
    r2 r8 d'16( c) d8 d,
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key g \minor \time 4/4 \tempoMarkup "Tempo moderato"
    R1
    r8 b'16(\p a) b8 b, r2
    r8 b'16( a) b8 g r2 \gotoBar "7"
    d8 c16( es) d4 d r
    R1
  }
}

Alto = {
  \relative c' {
    \clef alto
    \key g \minor \time 4/4 \autoBeamOff \tempoMarkup "Tempo moderato"
    R1*3 \gotoBar "7"
    r2 d4^\solo g8. a16
    fis8 g es8. es16 d4 r8 g
  }
}

AltoLyrics = \lyricmode {
  Re -- gis su --
  per -- ni nun -- ti -- a "do -"
}

Organo = {
  \relative c {
    \clef bass
    \key g \minor \time 4/4 \tempoMarkup "Tempo moderato"
    g8 a b c d b c f,
    b4 r8 b a4 d8 fis
    g4 r8 g, c4 b \gotoBar "7"
    g'8 c, d d, g a b c
    d b c f, b4 r8 b
  }
}

BassFigures = \figuremode {
  r4 <6>8 q <_+> <6>4 <7>8
  r4. <6>8 <7> <6\\> <_+>4
  r2. <4! 2>4
  r4 <_+>2 <6>8 q
  <_+> <6>4 <7>2 <6>8
}


\score {
  <<
    \new Staff {
      \set Staff.instrumentName = \markup \center-column { "trb" "solo" }
      \Trombone
    }
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
        \set Staff.instrumentName = "A"
        \new Voice = "Alto" { \dynamicUp \Alto }
      }
      \new Lyrics \lyricsto Alto \AltoLyrics
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
