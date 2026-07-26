\version "2.24.2"
\include "header.ly"

ViolinoI = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Andante ô Larghetto"
    r8 e'-!\f c-! g-! r g'-! e-! c-!
    r16 g'-! g( a) g( c) g8 r16 f-! f( g) f( d') f,8 \gotoBar "7"
    \tuplet 3/2 8 { a,16\f g f e[ d c] } d4\trill c r16 g'-!\p g( a)
    g( c) g8 r16 g'-! g( a) g( c) g8 e4
    f1
    e16-!\f g-! g( a) g c g8 r16 g-! fis( g) \hA fis( g) \hA fis( g)
  }
}

ViolinoII = {
  \relative c' {
    \clef treble
    \key c \major \time 4/4 \tempoMarkup "Andante ô Larghetto"
    r16 c'-! g( c) g( c) g( c) e,( e') c( e) g,( c) g( c)
    e,( e' e f) e( c) e8 r16 d( d e) d( h) d8 \gotoBar "7"
    c,\f c4 h8 c4 r16 e\p e f
    e8 r r16 e' e( f) e( c) e8 r g,
    h2 g
    g16(\f e' e f) e( c) e8 r e e g
  }
}

Soprano = {
  \relative c' {
    \clef soprano
    \key c \major \time 4/4 \autoBeamOff \tempoMarkup "Andante ô Larghetto"
    R1*2 \gotoBar "7"
    r2 r8 c'^\solo c\trill g
    r e' e\trill c r g c d16 e
    c8. h16 h4 r8 d f f16 e
    d8 c r4 r2
  }
}

SopranoLyrics = \lyricmode {
  Ve -- ni -- te,
  ve -- ni -- te ve -- ni -- te mor --
  ta -- li -- um ac -- cae -- li -- tum
  tur -- bae
}

Organo = {
  \relative c {
    \clef bass
    \key c \major \time 4/4 \tempoMarkup "Andante ô Larghetto"
    c8 c c c' c, c c c'
    c,4 r8 c d4 r8 h \gotoBar "7"
    f'4\f f8 g c,2~
    c1\p
    d2 h
    c8(\f c c c) b( b b b)
  }
}

BassFigures = \figuremode {
  r1
  r2.. <6 5>8
  r4 <6 5>2.
  r1
  <6>2 <6 5>
  r <4 2>
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
